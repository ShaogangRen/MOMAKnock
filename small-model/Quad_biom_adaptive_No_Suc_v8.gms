*$set myroot C:\Users\menglu\Desktop\shogang\OptKnock\small-model\AntCore\AntCore




sets

k /1*5000/

gg  /1*5000/

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




i metabolites
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


ExSuc(j)
/
'EX_suc'
/

constraints(j)
/
'EX_gluc'
'75'
'EX_suc'
/
;



parameter

S(i,j)
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



basemin(j)
*$include "%myroot%Min.txt"
/
'1_f                           ' 10.25250
'1_b                           '  0.00000
'2                             '  8.67250
'3_f                           '  8.67250
'3_b                           '  0.00000
'4_f                           '-54.14900
'4_b                           '  0.00000
'5_f                           ' 42.63100
'5_b                           '  0.00000
'6_f                           ' 39.14800
'6_b                           '  0.00000
'7                             ' 34.02800
'8                             '  0.00000
'9                             '  0.00000
'10_f                          ' -2.93769
'10_b                          '  0.00000
'11_f                          '  1.43800
'11_b                          '  0.00000
'12_f                          ' -2.93769
'12_b                          '  0.00000
'13_f                          '-16.78750
'13_b                          '  0.00000
'14_f                          '-17.50950
'14_b                          '  0.00000
'15_f                          '-17.50950
'15_b                          '  0.00000
'16_f                          ' -0.73136
'16_b                          '  0.00000
'17                            '  0.00000
'18                            '  0.00000
'19                            ' 50.80682
'20                            '  0.00000
'21_f                          '  2.15600
'21_b                          '  0.00000
'22_f                          '  2.15600
'22_b                          '  0.00000
'23                            '  0.00000
'24_f                          ' -1.92850
'24_b                          '  0.00000
'25_f                          '  0.00000
'25_b                          '  0.00000
'26_f                          '  0.74200
'26_b                          '  0.00000
'27_f                          '-88.59550
'27_b                          '  0.00000
'28                            '  0.00000
'29                            '  0.00000
'30                            '  3.57400
'31                            '  0.00000
'32_f                          ' 29.20627
'32_b                          '  0.00000
'33_f                          ' 46.28672
'33_b                          '  0.00000
'34                            ' 46.28672
'35                            ' 73.48400
'36                            ' 73.48400
'37                            ' 13.05900
'38                            '  1.35000
'39                            '  0.42000
'40                            '  0.56200
'41                            '  3.63600
'42                            '  0.45800
'43                            '  0.97600
'44                            '  0.00000
'45_f                          ' -1.95888
'45_b                          '  0.00000
'46_f                          '  0.09700
'46_b                          '  0.00000
'47                            '  0.00000
'48                            '  0.46600
'49                            '  0.65200
'50                            '  0.65200
'51                            '  1.03400
'52                            '  0.29200
'53                            '  0.80400
'54                            '  0.85600
'55                            '  0.55200
'56                            '  0.35200
'57                            '  0.26200
'58                            '  0.10800
'59                            '  0.18000
'60                            '  0.29200
'61                            '  0.18000
'62                            '  0.00000
'63                            '  0.00000
'64_f                          '105.08900
'64_b                          '  0.00000
'65                            '  0.00000
'66                            '100.00000
'67                            '  0.00000
'68_f                          '-1.000E+2
'68_b                          '  0.00000
'69                            ' 73.48400
'70                            ' 30.23427
'71                            ' 87.22667
'72                            '  0.00000
'73                            ' 13.92600
'74                            '  0.46600
'75                            '  2.00000
'EX_pdo                        ' 73.48400
'EX_co2                        ' 87.22667
'EX_ac                         ' 30.23427
'EX_atp                        '  0.00000
'EX_gluc                       '-1.000E+2
'EX_cit                        '-1.000E+2
'EX_glyc                       '-1.000E+2
'EX_nh3                        '-28.44944
'EX_o2                         '  0.00000
'EX_so4                        ' -0.95199
'SUCt                          '  0.00000
'EX_suc                        '  0.00000
'PSEUDOpyr_1                   '-1.000E+3
'PSEUDOpep_1                   '-1.000E+3
'PSEUDOco2_1                   '-1.000E+3
/



basemax(j)
*$include "%myroot%Max.txt"
/
'1_f                           ' 99.59000
'1_b                           '  0.00000
'2                             ' 98.01000
'3_f                           ' 98.01000
'3_b                           '  0.00000
'4_f                           ' 49.75173
'4_b                           '  0.00000
'5_f                           '143.39926
'5_b                           '  0.00000
'6_f                           '141.06362
'6_b                           '  0.00000
'7                             '123.36550
'8                             ' 89.33750
'9                             ' 53.60250
'10_f                          ' 34.29700
'10_b                          '  0.00000
'11_f                          ' 19.30550
'11_b                          '  0.00000
'12_f                          ' 34.29700
'12_b                          '  0.00000
'13_f                          '  2.20633
'13_b                          '  0.00000
'14_f                          '  0.73136
'14_b                          '  0.00000
'15_f                          '  0.73136
'15_b                          '  0.00000
'16_f                          ' 17.50950
'16_b                          '  0.00000
'17                            ' 89.33750
'18                            ' 89.33750
'19                            '118.09950
'20                            ' 32.87836
'21_f                          '114.69655
'21_b                          '  0.00000
'22_f                          '114.69655
'22_b                          '  0.00000
'23                            '112.54055
'24_f                          '111.59655
'24_b                          '  0.00000
'25_f                          '  0.00000
'25_b                          '  0.00000
'26_f                          '  1.51583
'26_b                          '  0.00000
'27_f                          '  1.51583
'27_b                          '  0.00000
'28                            ' 89.33750
'29                            ' 89.33750
'30                            ' 95.15650
'31                            ' 89.33750
'32_f                          '115.68550
'32_b                          '  0.00000
'33_f                          '125.21533
'33_b                          '  0.00000
'34                            '125.21533
'35                            '219.82660
'36                            '219.82660
'37                            ' 30.46611
'38                            '  2.75792
'39                            '  0.85802
'40                            '  1.14811
'41                            ' 16.17666
'42                            '  0.93565
'43                            '  1.99387
'44                            '  4.58631
'45_f                          '  2.57610
'45_b                          '  0.00000
'46_f                          '  4.66229
'46_b                          '  0.00000
'47                            '  8.93837
'48                            '  0.95199
'49                            '  1.33197
'50                            '  1.33197
'51                            ' 10.99679
'52                            '  0.59653
'53                            '  1.64249
'54                            '  1.74872
'55                            '  1.12768
'56                            '  0.71910
'57                            '  0.53524
'58                            '  0.22063
'59                            '  0.36772
'60                            '  0.59653
'61                            '  0.36772
'62                            '  0.00000
'63                            '  0.00000
'64_f                          '231.54964
'64_b                          '  0.00000
'65                            ' 89.33750
'66                            '100.00000
'67                            '100.00000
'68_f                          ' 19.11667
'68_b                          '  0.00000
'69                            '219.82660
'70                            '116.71350
'71                            '275.50760
'72                            '  0.00000
'73                            ' 28.44944
'74                            '  0.95199
'75                            '  4.08580
'EX_pdo                        '219.82660
'EX_co2                        '275.50760
'EX_ac                         '116.71350
'EX_atp                        ' 89.33750
'EX_gluc                       '-1.000E+2
'EX_cit                        '  0.00000
'EX_glyc                       ' 19.11667
'EX_nh3                        '-13.92600
'EX_o2                         '  0.00000
'EX_so4                        ' -0.46600
'SUCt                          '112.54055
'EX_suc                        '112.54055
'PSEUDOpyr_1                   '1.0000E+3
'PSEUDOpep_1                   '1.0000E+3
'PSEUDOco2_1                   '1.0000E+3
/



w(j)
/
'1_f'  99.162
'1_b'  0.0
'2'  95.935
'3_f'  95.935
'3_b'  0.0
'4_f'  45.814
'4_b'  0.0
'5_f'  139.236
'5_b'  0.0
'6_f'  132.121
'6_b'  0.0
'7'  121.661
'8'  0.0
'9'  0.0
'10_f'  -2.938
'10_b'  0.0
'11_f'  2.938
'11_b'  0.0
'12_f'  -2.938
'12_b'  0.0
'13_f'  2.206
'13_b'  0.0
'14_f'  0.731
'14_b'  0.0
'15_f'  0.731
'15_b'  0.0
'16_f'  -0.731
'16_b'  0.0
'17'  0.0
'18'  0.0
'19'  110.903
'20'  0.0
'21_f'  4.404
'21_b'  0.0
'22_f'  4.404
'22_b'  0.0
'23'  0.0
'24_f'  -1.928
'24_b'  0.0
'25_f'  0.0
'25_b'  0.0
'26_f'  1.516
'26_b'  0.0
'27_f'  1.516
'27_b'  0.0
'28'  0.0
'29'  0.0
'30'  7.301
'31'  0.0
'32_f'  96.799
'32_b'  0.0
'33_f'  50.121
'33_b'  0.0
'34'  50.121
'35'  150.121
'36'  150.121
'37'  26.678
'38'  2.758
'39'  0.858
'40'  1.148
'41'  7.428
'42'  0.936
'43'  1.994
'44'  4.586
'45_f'  2.576
'45_b'  0.0
'46_f'  0.198
'46_b'  0.0
'47'  0.0
'48'  0.952
'49'  1.332
'50'  1.332
'51'  2.112
'52'  0.597
'53'  1.642
'54'  1.749
'55'  1.128
'56'  0.719
'57'  0.535
'58'  0.221
'59'  0.368
'60'  0.597
'61'  0.368
'62'  0.0
'63'  0.0
'64_f'  214.686
'64_b'  0.0
'65'  0.0
'66'  100.000
'67'  4.404
'68_f'  -100.000
'68_b'  0.0
'69'  150.121
'70'  98.899
'71'  116.131
'72'  0.0
'73'  28.449
'74'  0.952
'75'  4.086
'EX_pdo'  150.121
'EX_co2'  116.131
'EX_ac'  98.899
'EX_atp'  0.0
'EX_gluc'  -100.000
'EX_cit'  -4.404
'EX_glyc'  -100.000
'EX_nh3'  -28.449
'EX_o2'  0.0
'EX_so4'  -0.952
'SUCt'  0.0
'EX_suc'  0.0
/


LB(j), UB(j)
*new parameters
vk(k)
vH(j)
vT(j)
vkb(gg)


blocked(j)
segsz
count
allowknock
;

options
*        limrow = 10000
*        limcol = 10000
         optCR = 0.001
*        optCA = 0.0
*        iterlim = 100000
*        decimals = 8
*        reslim = 100000
*        work = 50000000
*        sysout = off
*        solprint = on
;


scalar minbiomass /2/;
scalar M /1000/;
scalar filetype /8/;
*1 for bounded, 2 for relax, 3 for adaptive , , 6 for no Ex_succ  new version
* 7 for new stop  condition
* 8 for beta converge


scalar PCN /5/;
allowknock = 3;



variables
zprimal
zdual
z

a(j)
b(i)
c1(j)
d1(j)
uglc
;


positive variables

beta(k)
ubm
c(j)
d(j)
;

binary variables y(j);


*********** parameter initiallization ****
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
*LB('EX_o2') = -100;
LB('EX_so4') = -100;
LB('EX_nh3') = -100;
LB('EX_cit') = -100;
LB('EX_glyc') = -100;


****lowboud and upboud for v
*** $$$$$$$$$$$$$$ need to do it for v
*


equations

primalobj
primal1
primal2
primal3
primal4
primal5
primal6

dualobj
dual1
dual2
dual3
dual4

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
;





*****************Primal inner problem  MIMIZE  *******************

primalobj..   zprimal =e= sum(j,sum(k$(ord(k) >= vH(j)and ord(k) <= vT(j)),(vk(k)*vk(k)-2*w(j)*vk(k))*beta(k) ));
primal1(j)..  sum(k$(ord(k) >= vH(j) and ord(k) <= vT(j)), beta(k)) =e= 1;
primal2(i)..  sum(j,sum(k$( ord(k) >= vH(j) and ord(k) <= vT(j)) , S(i,j)*vk(k)*beta(k) ) ) =e= 0;
primal3..    sum(k$( ord(k) >= vH('EX_gluc') and ord(k) <= vT('EX_gluc') ), vk(k)*beta(k) ) =e= -100;
primal4..    sum(k$( ord(k) >= vH('75') and ord(k) <= vT('75') ),  vk(k)*beta(k) ) =g= minbiomass;
primal5(j).. sum(k$( ord(k) >= vH(j)and ord(k) <= vT(j) ),-1*vk(k)*beta(k))  =g=  -1*basemax(j)*y(j);
primal6(j).. sum(k$( ord(k) >= vH(j)and ord(k) <= vT(j) ), vk(k)*beta(k) )    =g=  basemin(j)*y(j);


******************** DUAL INNER PROBLEM   ********************
dualobj..     zdual =e= sum(j,a(j))-100*uglc+ minbiomass*ubm+sum(j,d(j)*basemin(j)*y(j)-c(j)*basemax(j)*y(j));
dual1(k)$( ord(k) >= vH('EX_gluc') and ord(k) <= vT('EX_gluc') )..
               vk(k)*uglc + a('EX_gluc')+sum(i,S(i,'EX_gluc')*vk(k)*b(i)) + (d('EX_gluc')-
                c('EX_gluc'))*vk(k) =l=  vk(k)*vk(k) - 2*w('EX_gluc')*vk(k);

dual2(k)$( ord(k) >= vH('75') and ord(k) <= vT('75') )..
               vk(k)*ubm + a('75')+sum(i,S(i,'75')*vk(k)*b(i)) + (d('75')-c('75'))*vk(k) =l=
               vk(k)* vk(k) - 2*w('75')*vk(k);

** may use another way ????
dual3(j,k)$(not constraints(j) and ord(k) >= vH(j) and ord(k) <= vT(j))..
             a(j)+sum(i,S(i,j)*vk(k)*b(i)) + (d(j)-c(j))*vk(k) =l= vk(k)* vk(k) - 2*w(j)*vk(k);

dual4(k)$( ord(k) >= vH('EX_suc') and ord(k) <= vT('EX_suc') )..
     a('EX_suc')+sum(i,S(i,'EX_suc')*vk(k)*b(i)) + (d('EX_suc')-c('EX_suc'))*vk(k) =l= 0;

***************************** OUTER PROBLEM ****************************************
outerobj..    z =e= sum(k$( ord(k) >= vH('EX_suc') and ord(k) <= vT('EX_suc') ),vk(k)*beta(k) );
outer1..      sum(j, (1-y(j))) =l= allowknock;
outer2..      sum(j$(not ExSuc(j)),sum(k$(ord(k) >= vH(j)and ord(k) <= vT(j)),(vk(k)*vk(k)-2*w(j)*vk(k))*beta(k) )) =e=
              sum(j,a(j))- uglc*100 + minbiomass*ubm + sum(j,d1(j)*basemin(j)-c1(j)*basemax(j));

******************************************
**** Linearinzing constraints

outer3(j)..             c1(j) =l= M*y(j);
outer4(j)..             c1(j) =g= -M*y(j);
outer5(j)..             c1(j) =l= c(j) + M*(1-y(j));
outer6(j)..             c1(j) =g= c(j) - M*(1-y(j));

outer7(j)..             d1(j) =l= M*y(j);
outer8(j)..             d1(j) =g= -M*y(j);
outer9(j)..             d1(j) =l= d(j) + M*(1-y(j));
outer10(j)..            d1(j) =g= d(j) - M*(1-y(j));

*** Integer Cut Constraint ??????? **************
**outer3(iter1)$((ord(iter1) lt count) and knockoutsyet)..        v('EX_suc') =g= objstore(iter1) + 0.01 - 1000*sum(j$(ystore(iter1, j) lt 0.5), y(j));



**** MODEL PROBLEMS **

model primalproblem
/
primalobj
primal1
primal2
primal3
primal4
primal5
primal6
/
;

model dualproblem
/
dualobj
dual1
dual2
dual3
/
;

model optknock
/
primal1
primal2
primal3
primal4
primal5
primal6
dual1
dual2
dual3
dual4
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

******* solving problems
*optknock.optfile = 1;

blocked(j)$( (UB(j) eq 0) and (LB(j) eq 0) ) = 1;
S(i, j)$(blocked(j)) = 0;


scalar vkpos;
scalar step;
scalar BUsed ;

scalar nostop;
scalar iter;
scalar bmax;
scalar bchn;


vkpos = 1;
*vk(k) = 0;
loop(j,
    segsz = (basemax(j) - basemin(j))/(PCN-1) ;
    vH(j) = vkpos;
    step = 0;
    while(step lt PCN,
          vk(k)$( ord(k)= vkpos ) =  basemin(j) + step*segsz;
           step = step + 1;
           vkpos = vkpos + 1;
       );

     vT(j) = vkpos - 1;
);
BUsed = vkpos -1;


*vPcn(j) =   PCN;


y.l(j) = 1;
y.l(j)$(rxntype(j) = 2) = 1;
y.fx(j)$( (LB(j) gt 0) and (UB(j) gt 0) ) = 1;
y.fx(j)$( (LB(j) lt 0) and (UB(j) lt 0) ) = 1;
y.fx(j)$(blocked(j)) = 1;

y.fx('EX_o2') = 1;


scalars
fv1
fv2
flag
;


scalars
vkbp
st
ed
ebs
vv
;

scalar biomassV;
scalar wv;
scalar mbeta;
scalar run_m /1/;

parameter yneg(j);

ebs = 0.001;
iter = 1;
nostop = 1;

*v.fx('EX_o2') = 0;

while( nostop = 1,

*         y.l(j) = 1;
*         beta.l(k) = 0;

*         a.l(j) = 0;
*         b.l(i) = 0;
*         c.l(j) = 0;
*         d.l(j) = 0;
*         c1.l(j) =0;
*         d1.l(j) = 0;
*         ubm.l = 0;
*         uglc.l = 0;
       if(run_m >0.5,
          solve optknock using mip maximizing z ;

        wv =  sum(j,sum(k$(ord(k) >= vH(j) and ord(k) <= vT(j)),(vk(k)*vk(k)-2*w(j)*vk(k)+ w(j)*w(j))*beta.l(k) ));
        biomassV = sum(k$(ord(k) >= vH('75') and ord(k) <= vT('75')),vk(k)*beta.l(k));


         display  wv;
         display  iter;
         display  BUsed;
*         display  ebs;
         display biomassV;
         display z.l;
         display 'Identified y';
         yneg(j) = 1-y.l(j);
         display yneg;

        else
        display 'No segment added, Multiply ebs by 0.1!!';
*        display  ebs;
         run_m = 1;
         );

         display  ebs;

         bchn = 0;
         vkbp = 1;
         vkb(gg) = 0;

         loop(j$(not ExSuc(j)),
                st = vH(j);
                ed = vT(j);

                fv1 =   sum(k$(ord(k) >= st and ord(k) <= ed), (vk(k)*vk(k) - 2*w(j)*vk(k))*beta.l(k));
                vv =   sum(k$(ord(k) >= st and ord(k) <= ed), vk(k)*beta.l(k));
                fv2 =   vv*vv - 2*w(j)*vv;

                flag = 0;
                vH(j) = vkbp;

                  mbeta = smax(k$(ord(k) >= st and ord(k) <= ed), beta.l(k));

                    loop(k$(ord(k) >= st and ord(k) <= ed),
                          vkb(gg)$(ord(gg) = vkbp) = vk(k);
                          vkbp = vkbp + 1;
                          if(vkbp = card(gg), display 'Buffer runs out!!!!!!!!!!!!' );

                           if(beta.l(k) ne 0 and flag = 0 and (fv1 - fv2 > ebs or mbeta < 0.95 ),
                              flag = 1;
                              vkb(gg)$(ord(gg) = vkbp) = vv;
                              vkbp = vkbp + 1;
                               if(vkbp = card(gg), display 'Buffer runs out!!!!!!!!!!!!' );
                                bchn = bchn + 1;
                             );
                          );
                vT(j) = vkbp-1;
          );

         st = vH('EX_suc');
         ed = vT('EX_suc');
         vH('EX_suc') = vkbp;
         loop(k$(ord(k) >= st and ord(k) <= ed),
               vkb(gg)$(ord(gg) = vkbp) = vk(k);
               vkbp = vkbp + 1;
             );
        vT('EX_suc') = vkbp-1;


* copy vkb to vk
          loop(gg,
          vk(k)$(ord(k) = ord(gg)) =     vkb(gg);
          );

          BUsed = vkbp-1;

          if(iter >= 20, nostop = 0; display 'Maximum iterations!!' );
* segment stop criterior
*            if(iter >5 and ebs ne ebsF, ebs = ebsF;);
            if(bchn <=0,
               if(iter >5,
                nostop = 0; display 'Beta converged!!'
               else
                ebs = ebs*0.1;
                run_m = 0;);
             );


      display  bchn;
          iter = iter + 1;
 );

*display vkb;

display filetype;
display PCN;
display  allowknock;


