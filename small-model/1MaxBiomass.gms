*$set myroot C:\Users\menglu\Desktop\shogang\OptKnock\small-model\AntCore\AntCore

options limrow = 1000
        optCR = 1E-9
        optCA = 0.0
        iterlim = 100000
        decimals = 8
        reslim = 100000
        work = 50000000;

sets i metabolites
*$include "%myroot%_cmp.txt"
/
'3pg'
'6pg'
'ac'
'ac(ext)'
'accoa'
'akg'
'ala'
'arg'
'asn'
'asp'
'atp'
'atp(ext)'
'cit'
'cit(ext)'
'co2'
'co2(ext)'
'co2__1'
'cys'
'dhap'
'e4p'
'f6p'
'fadh2'
'fbp'
'fthf'
'fum'
'g6p'
'gap'
'gln'
'glu'
'gluc(ext)'
'gly'
'glyc'
'glyc(ext)'
'glyc3p'
'his'
'hpa'
'icit'
'ile'
'kdpg'
'leu'
'll-dap'
'lys'
'mal'
'meethf'
'met'
'methf'
'nadh'
'nadph'
'nh3'
'nh3(ext)'
'o2'
'o2(ext)'
'oac'
'pdo'
'pdo(ext)'
'pep'
'pep__1'
'phe'
'pro'
'pyr'
'pyr__1'
'r5p'
'ru5p'
's7p'
'ser'
'so4'
'so4(ext)'
'suc'
'suc(ext)'
'succoa'
'tac3'
'thr'
'tkc2'
'trp'
'tyr'
'val'
'x5p'
/


j reactions
*$include "%myroot%_rxnnames.txt"
/
'1_f'
'1_b'
'2'
'3_f'
'3_b'
'4_f'
'4_b'
'5_f'
'5_b'
'6_f'
'6_b'
'7'
'8'
'9'
'10_f'
'10_b'
'11_f'
'11_b'
'12_f'
'12_b'
'13_f'
'13_b'
'14_f'
'14_b'
'15_f'
'15_b'
'16_f'
'16_b'
'17'
'18'
'19'
'20'
'21_f'
'21_b'
'22_f'
'22_b'
'23'
'24_f'
'24_b'
'25_f'
'25_b'
'26_f'
'26_b'
'27_f'
'27_b'
'28'
'29'
'30'
'31'
'32_f'
'32_b'
'33_f'
'33_b'
'34'
'35'
'36'
'37'
'38'
'39'
'40'
'41'
'42'
'43'
'44'
'45_f'
'45_b'
'46_f'
'46_b'
'47'
'48'
'49'
'50'
'51'
'52'
'53'
'54'
'55'
'56'
'57'
'58'
'59'
'60'
'61'
'62'
'63'
'64_f'
'64_b'
'65'
'66'
'67'
'68_f'
'68_b'
'69'
'70'
'71'
'72'
'73'
'74'
'75'
'EX_pdo'
'EX_co2'
'EX_ac'
'EX_atp'
'EX_gluc'
'EX_cit'
'EX_glyc'
'EX_nh3'
'EX_o2'
'EX_so4'
'SUCt'
'EX_suc'
'PSEUDOpyr_1'
'PSEUDOpep_1'
'PSEUDOco2_1'
/


fwdrev(j),
vj(j)
;

parameter s(i,j)
*$include "%myroot%_sij.txt"
/
'g6p'.'1_f' -1
'f6p'.'1_f' 1
'f6p'.'1_b' -1
'g6p'.'1_b' 1
'atp'.'2' -1
'f6p'.'2' -1
'fbp'.'2' 1
'fbp'.'3_f' -1
'dhap'.'3_f' 1
'gap'.'3_f' 1
'dhap'.'3_b' -1
'gap'.'3_b' -1
'fbp'.'3_b' 1
'dhap'.'4_f' -1
'gap'.'4_f' 1
'gap'.'4_b' -1
'dhap'.'4_b' 1
'gap'.'5_f' -1
'nadh'.'5_f' 1
'atp'.'5_f' 1
'3pg'.'5_f' 1
'nadh'.'5_b' -1
'atp'.'5_b' -1
'3pg'.'5_b' -1
'gap'.'5_b' 1
'3pg'.'6_f' -1
'pep'.'6_f' 1
'pep'.'6_b' -1
'3pg'.'6_b' 1
'pep'.'7' -1
'pyr'.'7' 1
'atp'.'7' 1
'g6p'.'8' -1
'nadph'.'8' 1
'6pg'.'8' 1
'6pg'.'9' -1
'ru5p'.'9' 1
'nadph'.'9' 1
'co2'.'9' 1
'ru5p'.'10_f' -1
'x5p'.'10_f' 1
'x5p'.'10_b' -1
'ru5p'.'10_b' 1
'ru5p'.'11_f' -1
'r5p'.'11_f' 1
'r5p'.'11_b' -1
'ru5p'.'11_b' 1
'x5p'.'12_f' -1
'tkc2'.'12_f' 1
'gap'.'12_f' 1
'tkc2'.'12_b' -1
'gap'.'12_b' -1
'x5p'.'12_b' 1
'f6p'.'13_f' -1
'e4p'.'13_f' 1
'tkc2'.'13_f' 1
'e4p'.'13_b' -1
'tkc2'.'13_b' -1
'f6p'.'13_b' 1
's7p'.'14_f' -1
'r5p'.'14_f' 1
'tkc2'.'14_f' 1
'r5p'.'14_b' -1
'tkc2'.'14_b' -1
's7p'.'14_b' 1
'f6p'.'15_f' -1
'tac3'.'15_f' 1
'gap'.'15_f' 1
'tac3'.'15_b' -1
'gap'.'15_b' -1
'f6p'.'15_b' 1
's7p'.'16_f' -1
'e4p'.'16_f' 1
'tac3'.'16_f' 1
'e4p'.'16_b' -1
'tac3'.'16_b' -1
's7p'.'16_b' 1
'6pg'.'17' -1
'kdpg'.'17' 1
'kdpg'.'18' -1
'pyr'.'18' 1
'gap'.'18' 1
'pyr'.'19' -1
'nadh'.'19' 1
'co2'.'19' 1
'accoa'.'19' 1
'oac'.'20' -1
'accoa'.'20' -1
'cit'.'20' 1
'cit'.'21_f' -1
'icit'.'21_f' 1
'icit'.'21_b' -1
'cit'.'21_b' 1
'icit'.'22_f' -1
'nadph'.'22_f' 1
'co2'.'22_f' 1
'akg'.'22_f' 1
'nadph'.'22_b' -1
'co2'.'22_b' -1
'akg'.'22_b' -1
'icit'.'22_b' 1
'akg'.'23' -1
'succoa'.'23' 1
'nadh'.'23' 1
'co2'.'23' 1
'succoa'.'24_f' -1
'suc'.'24_f' 1
'atp'.'24_f' 1
'suc'.'24_b' -1
'atp'.'24_b' -1
'succoa'.'24_b' 1
'suc'.'25_f' -1
'fadh2'.'25_f' 1
'fum'.'25_f' 1
'fadh2'.'25_b' -1
'fum'.'25_b' -1
'suc'.'25_b' 1
'fum'.'26_f' -1
'mal'.'26_f' 1
'mal'.'26_b' -1
'fum'.'26_b' 1
'mal'.'27_f' -1
'nadh'.'27_f' 1
'oac'.'27_f' 1
'nadh'.'27_b' -1
'oac'.'27_b' -1
'mal'.'27_b' 1
'mal'.'28' -1
'nadph'.'28' 1
'pyr'.'28' 1
'co2'.'28' 1
'mal'.'29' -1
'nadh'.'29' 1
'pyr'.'29' 1
'co2'.'29' 1
'co2'.'30' -1
'pep'.'30' -1
'oac'.'30' 1
'oac'.'31' -1
'atp'.'31' -1
'co2'.'31' 1
'pep'.'31' 1
'accoa'.'32_f' -1
'ac'.'32_f' 1
'atp'.'32_f' 1
'ac'.'32_b' -1
'atp'.'32_b' -1
'accoa'.'32_b' 1
'nadh'.'33_f' -1
'dhap'.'33_f' -1
'glyc3p'.'33_f' 1
'glyc3p'.'33_b' -1
'nadh'.'33_b' 1
'dhap'.'33_b' 1
'glyc3p'.'34' -1
'glyc'.'34' 1
'glyc'.'35' -1
'hpa'.'35' 1
'nadph'.'36' -1
'hpa'.'36' -1
'pdo'.'36' 1
'nadph'.'37' -1
'akg'.'37' -1
'nh3'.'37' -1
'glu'.'37' 1
'nh3'.'38' -1
'glu'.'38' -1
'atp'.'38' -1
'gln'.'38' 1
'glu'.'39' -1
'atp'.'39' -1
'pro'.'39' 1
'nadph'.'39' -2
'asp'.'40' -1
'gln'.'40' -1
'nadph'.'40' -1
'co2'.'40' -1
'accoa'.'40' -1
'glu'.'40' -1
'ac'.'40' 1
'fum'.'40' 1
'akg'.'40' 1
'arg'.'40' 1
'atp'.'40' -5
'oac'.'41' -1
'glu'.'41' -1
'asp'.'41' 1
'akg'.'41' 1
'asp'.'42' -1
'nh3'.'42' -1
'asn'.'42' 1
'atp'.'42' -2
'pyr'.'43' -1
'glu'.'43' -1
'akg'.'43' 1
'ala'.'43' 1
'glu'.'44' -1
'3pg'.'44' -1
'nadh'.'44' 1
'akg'.'44' 1
'ser'.'44' 1
'ser'.'45_f' -1
'gly'.'45_f' 1
'meethf'.'45_f' 1
'gly'.'45_b' -1
'meethf'.'45_b' -1
'ser'.'45_b' 1
'gly'.'46_f' -1
'nadh'.'46_f' 1
'co2'.'46_f' 1
'meethf'.'46_f' 1
'nh3'.'46_f' 1
'nadh'.'46_b' -1
'co2'.'46_b' -1
'meethf'.'46_b' -1
'nh3'.'46_b' -1
'gly'.'46_b' 1
'thr'.'47' -1
'gly'.'47' 1
'nadh'.'47' 1
'accoa'.'47' 1
'ser'.'48' -1
'accoa'.'48' -1
'so4'.'48' -1
'cys'.'48' 1
'ac'.'48' 1
'atp'.'48' -3
'nadph'.'48' -4
'succoa'.'49' -1
'pyr'.'49' -1
'asp'.'49' -1
'glu'.'49' -1
'atp'.'49' -1
'suc'.'49' 1
'akg'.'49' 1
'll-dap'.'49' 1
'nadph'.'49' -2
'll-dap'.'50' -1
'co2'.'50' 1
'lys'.'50' 1
'asp'.'51' -1
'thr'.'51' 1
'atp'.'51' -2
'nadph'.'51' -2
'cys'.'52' -1
'methf'.'52' -1
'asp'.'52' -1
'succoa'.'52' -1
'atp'.'52' -1
'met'.'52' 1
'pyr'.'52' 1
'suc'.'52' 1
'nh3'.'52' 1
'nadph'.'52' -2
'nadph'.'53' -1
'glu'.'53' -1
'co2'.'53' 1
'akg'.'53' 1
'val'.'53' 1
'pyr'.'53' -2
'nadph'.'54' -1
'glu'.'54' -1
'accoa'.'54' -1
'nadh'.'54' 1
'akg'.'54' 1
'leu'.'54' 1
'pyr'.'54' -2
'co2'.'54' 2
'nadph'.'55' -1
'pyr'.'55' -1
'thr'.'55' -1
'glu'.'55' -1
'ile'.'55' 1
'akg'.'55' 1
'co2'.'55' 1
'nh3'.'55' 1
'nadph'.'56' -1
'e4p'.'56' -1
'glu'.'56' -1
'atp'.'56' -1
'co2'.'56' 1
'akg'.'56' 1
'phe'.'56' 1
'pep'.'56' -2
'nadph'.'57' -1
'e4p'.'57' -1
'glu'.'57' -1
'atp'.'57' -1
'nadh'.'57' 1
'co2'.'57' 1
'akg'.'57' 1
'tyr'.'57' 1
'pep'.'57' -2
'nadph'.'58' -1
'r5p'.'58' -1
'e4p'.'58' -1
'ser'.'58' -1
'gln'.'58' -1
'trp'.'58' 1
'pyr'.'58' 1
'co2'.'58' 1
'glu'.'58' 1
'gap'.'58' 1
'pep'.'58' -2
'atp'.'58' -3
'r5p'.'59' -1
'asp'.'59' -1
'fthf'.'59' -1
'gln'.'59' -1
'his'.'59' 1
'akg'.'59' 1
'fum'.'59' 1
'atp'.'59' -5
'nadh'.'59' 2
'nadh'.'60' -1
'meethf'.'60' -1
'methf'.'60' 1
'meethf'.'61' -1
'nadph'.'61' 1
'fthf'.'61' 1
'nadh'.'62' -1
'o2'.'62' -0.5
'atp'.'62' 3
'fadh2'.'63' -1
'o2'.'63' -0.5
'atp'.'63' 2
'nadh'.'64_f' -1
'nadph'.'64_f' 1
'nadph'.'64_b' -1
'nadh'.'64_b' 1
'atp'.'65' -1
'atp(ext)'.'65' 1
'gluc(ext)'.'66' -1
'atp'.'66' -1
'g6p'.'66' 1
'cit(ext)'.'67' -1
'cit'.'67' 1
'glyc'.'68_f' -1
'glyc(ext)'.'68_f' 1
'glyc(ext)'.'68_b' -1
'glyc'.'68_b' 1
'pdo'.'69' -1
'pdo(ext)'.'69' 1
'ac'.'70' -1
'ac(ext)'.'70' 1
'co2'.'71' -1
'co2(ext)'.'71' 1
'o2(ext)'.'72' -1
'o2'.'72' 1
'nh3(ext)'.'73' -1
'nh3'.'73' 1
'so4(ext)'.'74' -1
'so4'.'74' 1
'ala'.'75' -0.488
'arg'.'75' -0.281
'asn'.'75' -0.229
'asp'.'75' -0.229
'cys'.'75' -0.087
'glu'.'75' -0.250
'gln'.'75' -0.250
'gly'.'75' -0.582
'his'.'75' -0.090
'ile'.'75' -0.276
'leu'.'75' -0.428
'lys'.'75' -0.326
'met'.'75' -0.146
'phe'.'75' -0.176
'pro'.'75' -0.210
'ser'.'75' -0.205
'thr'.'75' -0.241
'trp'.'75' -0.054
'tyr'.'75' -0.131
'val'.'75' -0.402
'g6p'.'75' -0.205
'f6p'.'75' -0.071
'r5p'.'75' -0.754
'gap'.'75' -0.129
'3pg'.'75' -0.619
'pep'.'75' -0.051
'pyr'.'75' -0.083
'accoa'.'75' -2.510
'akg'.'75' -0.087
'oac'.'75' -0.340
'meethf'.'75' -0.443
'atp'.'75' -33.247
'nadph'.'75' -5.363
'nadh'.'75' 1.455
'pdo(ext)'.'EX_pdo' -1
'co2(ext)'.'EX_co2' -1
'ac(ext)'.'EX_ac' -1
'atp(ext)'.'EX_atp' -1
'gluc(ext)'.'EX_gluc' -1
'cit(ext)'.'EX_cit' -1
'glyc(ext)'.'EX_glyc' -1
'nh3(ext)'.'EX_nh3' -1
'o2(ext)'.'EX_o2' -1
'so4(ext)'.'EX_so4' -1
'suc'.'SUCt' -1
'suc(ext)'.'SUCt' 1
'suc(ext)'.'EX_suc' -1
/

rxntype(j) reaction type
*$include "%myroot%_rxntype.txt"
/
'1_f' 1
'1_b' 2
'2' 0
'3_f' 1
'3_b' 2
'4_f' 1
'4_b' 2
'5_f' 1
'5_b' 2
'6_f' 1
'6_b' 2
'7' 0
'8' 0
'9' 0
'10_f' 1
'10_b' 2
'11_f' 1
'11_b' 2
'12_f' 1
'12_b' 2
'13_f' 1
'13_b' 2
'14_f' 1
'14_b' 2
'15_f' 1
'15_b' 2
'16_f' 1
'16_b' 2
'17' 0
'18' 0
'19' 0
'20' 0
'21_f' 1
'21_b' 2
'22_f' 1
'22_b' 2
'23' 0
'24_f' 1
'24_b' 2
'25_f' 1
'25_b' 2
'26_f' 1
'26_b' 2
'27_f' 1
'27_b' 2
'28' 0
'29' 0
'30' 0
'31' 0
'32_f' 1
'32_b' 2
'33_f' 1
'33_b' 2
'34' 0
'35' 0
'36' 0
'37' 0
'38' 0
'39' 0
'40' 0
'41' 0
'42' 0
'43' 0
'44' 0
'45_f' 1
'45_b' 2
'46_f' 1
'46_b' 2
'47' 0
'48' 0
'49' 0
'50' 0
'51' 0
'52' 0
'53' 0
'54' 0
'55' 0
'56' 0
'57' 0
'58' 0
'59' 0
'60' 0
'61' 0
'62' 0
'63' 0
'64_f' 1
'64_b' 2
'65' 0
'66' 0
'67' 0
'68_f' 1
'68_b' 2
'69' 0
'70' 0
'71' 0
'72' 0
'73' 0
'74' 0
'75' 0
'EX_pdo' 4
'EX_co2' 4
'EX_ac' 4
'EX_atp' 4
'EX_gluc' 4
'EX_cit' 4
'EX_glyc' 4
'EX_nh3' 4
'EX_o2' 4
'EX_so4' 4
'SUCt' 0
'EX_suc' 4
'PSEUDOpyr_1' 3
'PSEUDOpep_1' 3
'PSEUDOco2_1' 3
/


n
basemin(j), basemax(j)
vmin(j), vmax(j)

fixed, limit, range
;

fwdrev(j)$(rxntype(j) = 1 or rxntype(j) = 2) = yes;

variables v(j), z;

equations

network, obj

*Constraints from the strain fluxes...

*flavanone
glc_upt
;

network(i)..                            sum(j, (s(i,j)*v(j))) =e= 0;
obj..                                   z =e= v('75');
glc_upt..                               v('EX_gluc') =e= -10;

parameter LB(j), UB(j);
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

LB('EX_gluc') = -100;
LB('EX_so4') = -100;
LB('EX_nh3') = -100;
LB('EX_cit') = -100;
LB('EX_glyc') = -100;
*UB('EX_o2') = 0;



v.fx('EX_o2') = 0;


v.lo(j) = LB(j);
v.up(j) = UB(j);

model flux_base
/
all
/
;

flux_base.optfile=1;

solve flux_base using lp maximizing z;
