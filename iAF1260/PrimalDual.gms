**** OptKnock:  A Bilevel Programming Framework for Identifying Gene Knockout Strategies for
****            Microbial Strain Optimization

**** Original Author(s):        Anthony P. Burgard, Priti Pharkya and Costas D. Maranas
**** Developed at the           Chemical & Biological Systems Optimizations Laboratory
****                            The Pennsylvania State University, University Park, PA, USA
**** Code Redeveloped by:       Sridhar Ranganathan, The Pennsylvania State University
**** Contact:                   costas@engr.psu.edu, sur152@psu.edu



**** Notes:
*       1. Run this file after estimating the initial bounds
*       2. The initial bounds are set as parameters - basemin and basemax

$set myroot iAF1260/iAF1260

options
        limrow = 10000
        limcol = 10000
        optCR = 1E-9
        optCA = 0.0
        iterlim = 100000
        decimals = 8
        reslim = 100000
        work = 50000000
        sysout = off
        solprint = on;

sets

iter /1*10/

i metabolites
$include "%myroot%_cmp.txt"

j reactions
$include "%myroot%_rxnnames.txt"

$ONEMPTY
sourcemetab(i)
$include "%myroot%_source.txt"

sourceflux(j)
$include "%myroot%_sourceflux.txt"

offaero(j)
$include "%myroot%_offaero.txt"

offglu(j)
$include "%myroot%_offglu.txt"

offaeroglu(j)
$include "%myroot%_offaeroglu.txt"

fwdrev(j)

constraints(j)
/
'EX_glc(e)'
'Ec_biomass_iAF1260_WT_59p81M'
/

;

alias(j, j1);
alias(iter, iter1);

parameter

S(i,j)
$include "%myroot%_sij.txt"

Sneg(i, j)

rxntype(j) reaction type
$include "%myroot%_rxntype.txt"

basemin(j)
$include "%myroot%Min.txt"

basemax(j)
$include "%myroot%Max.txt"

LB(j), UB(j)

k
temp(j)
blocked(j)
countstop
objdiff
bioprod
knockoutsyet
count
ofvalue(iter)
allowknock
notstop
objstore(iter)
ystore(iter, j)
wildtype
y(j)
;

scalar minbiomass /5/;
scalar M /1000/;
y(j) = 1;
k = 0;
Sneg(i, j) = -S(i, j);

fwdrev(j)$(rxntype(j) = 1 or rxntype(j) = 2) = yes;

variables
v(j)
zprimal
zdual
z
mu(j)
lambda(i)
alpha1, beta1
;

positive variables
alpha(j)
beta(j)
biomass
;

*binary variables y(j);

equations

primalobj
primal1
primal2
primal3
primal4
primal5

dualobj
dual1
dual2
dual3

outerobj
outer1
outer2
outer3
outer4
outer5
outer6
outer7
outer8
outer9
outer10
outer11
;

*** PRIMAL INNER PROBLEM
*** MAXIMIZE BIOMASSS

primalobj..             zprimal =e= v('Ec_biomass_iAF1260_WT_59p81M');
primal1(i)$(not sourcemetab(i))..               sum(j, (S(i,j)*v(j))) =e= 0;
primal2..               v('EX_glc(e)') =e= -100;
primal3..               v('Ec_biomass_iAF1260_WT_59p81M') =g= minbiomass;
primal4(j)..            v(j) =l= basemax(j)*y(j);
primal5(j)..            -v(j) =l= -basemin(j)*y(j);

*** DUAL INNER PROBLEM

dualobj..               zdual =e= - mu('EX_glc(e)')*100 - minbiomass*biomass + sum(j, alpha(j)*basemax(j)*y(j) - beta(j)*basemin(j)*y(j) );
dual1..                 sum(i$(not sourcemetab(i)), lambda(i)*S(i,'Ec_biomass_iAF1260_WT_59p81M') ) - biomass + alpha('Ec_biomass_iAF1260_WT_59p81M') - beta('Ec_biomass_iAF1260_WT_59p81M') =e= 1;
dual2..                 sum(i$(not sourcemetab(i)), lambda(i)*S(i,'EX_glc(e)') ) + mu('EX_glc(e)') + alpha('EX_glc(e)') - beta('EX_glc(e)') =e= 0;
dual3(j)$(not constraints(j))..
                        sum(i$(not sourcemetab(i)), lambda(i)*S(i, j) ) + alpha(j) - beta(j) =e= 0;

*** OUTER PROBLEM
*** MAXIMIZE V(succinate)

outerobj..              z =e= v('EX_succ(e)');
outer1..                sum(j, (1-y(j) ) ) =l= allowknock;
outer2..                v('Ec_biomass_iAF1260_WT_59p81M') =e= - mu('EX_glc(e)')*100 - minbiomass*biomass + sum(j, alpha1(j)*basemax(j) - beta1(j)*basemin(j) );

*** Linearinzing constraints

outer3(j)..             alpha1(j) =l= M*y(j);
outer4(j)..             alpha1(j) =g= -M*y(j);
outer5(j)..             alpha1(j) =l= alpha(j) + M*(1-y(j));
outer6(j)..             alpha1(j) =g= alpha(j) - M*(1-y(j));

outer7(j)..             beta1(j) =l= M*y(j);
outer8(j)..             beta1(j) =g= -M*y(j);
outer9(j)..             beta1(j) =l= beta(j) + M*(1-y(j));
outer10(j)..            beta1(j) =g= beta(j) - M*(1-y(j));

*** Integer Cut Constraint

outer11(iter1)$((ord(iter1) lt count) and knockoutsyet)..       v('EX_succ(e)') =g= objstore(iter1) + 0.01 - 1000*sum(j$(ystore(iter1, j) lt 0.5), y(j));

*** Lower and Upper Bounds for the fluxes

LB(j)$(rxntype(j) = 0) = 0;
UB(j)$(rxntype(j) = 0) = 1000;
LB(j)$(rxntype(j) = 1) = -1000;
UB(j)$(rxntype(j) = 1) = 1000;
LB(j)$(rxntype(j) = 2) = 0;
UB(j)$(rxntype(j) = 2) = 0;
LB(j)$(rxntype(j) = 4) = 0;
UB(j)$(rxntype(j) = 4) = 1000;
LB(j)$(rxntype(j) = 3) = -1000;
UB(j)$(rxntype(j) = 3) = 1000;

LB('EX_glc(e)') = -100;
LB('EX_o2(e)') = -1000;

*anaerobic glucose uptake conditions
LB(j)$(offglu(j)) = 0;
UB(j)$(offglu(j)) = 0;

v.lo(j) = LB(j);
v.up(j) = UB(j);

model primalproblem
/
primal1
primal2
primal3
primal4
primal5
primalobj
/
;

model dualproblem
/
dual1
dual2
dual3
dualobj
/
;

model optknock
/
primal1
primal2
primal3
primal4
primal5
dual1
dual2
dual3
outerobj
outer1
outer2
outer3
outer4
outer5
outer6
outer7
outer8
outer9
outer10
/
;

solve primalproblem using lp maximizing zprimal;

solve dualproblem using lp minimizing zdual;
