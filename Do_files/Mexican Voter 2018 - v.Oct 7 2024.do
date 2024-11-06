
*Updated: Oct 7, 2024.

*** 2018 ****

** WEIGHT VARIABLE: PONDERADOR

* (1) Vote choice

**including non-response
recode PELEPRE (1=1 "PAN-PRD-MC") (2=2 "PRI-VERDE-NA") (3=3 "MORENA-PT-PES") (5=4 "BRONCO") (996 997 999=9 "DK"), gen(vote2018a)
**excluding non-response
recode PELEPRE (1=1 "PAN-PRD-MC") (2=2 "PRI-VERDE-NA") (3=3 "MORENA-PT-PES") (5=4 "BRONCO") (996 997 999=.), gen(vote2018b)

* (2) Partisanship 

**including non-response
recode P5 (1 2=1 "PAN") (3 4=2 "PRI") (5 6=3 "PRD") (9 10=4 "MORENA") (96=5 "OTHER") (97=6 "INDEP") (98 99= 7 "DK"), gen(pid2018a)
**excluding non-response
recode P5 (1 2=1 "PAN") (3 4=2 "PRI") (5 6=3 "PRD") (9 10=4 "MORENA") (96=5 "OTHER") (97=6 "INDEP") (98 99=.), gen(pid2018b)

* (3) Presidential Approval

**including non-response
recode p15 (1=4 "Approve") (2=3) (3=2) (4=1 "Dissaprove") (8 9=5 "DK"), gen(approval2018a)
**excluding non-response
recode p15 (1=4 "Approve") (2=3) (3=2) (4=1 "Dissaprove") (8 9=.), gen(approval2018b)

* (4) Left-Right Ideology

recode P24 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(98 99=11 "DK"), gen(ideology2018a)
recode P24 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(98 99=.), gen(ideology2018b)


* (5) Satisfaction with democracy

**including non-response
recode p28 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Very Disatisfied") (8 9=5 "DK"), gen(satisfaction2018a)
*excluding non-response
recode p28 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Very Disatisfied") (8 9=.), gen(satisfaction2018b)

* (6) Feeling Thermometers

*pan
recode P20_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(pan2018a)
recode P20_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(pan2018b)

*pri
recode P20_2 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(pri2018a)
recode P20_2 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(pri2018b)

*prd
recode P20_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(prd2018a)
recode P20_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(prd2018b)

*morena
recode P20_8 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(morena2018a)
recode P20_8 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(morena2018b)

*amlo
recode P21_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(amlo2018a)
recode P21_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(amlo2018b)


* (7) Seccion: rural, mixed, urban

encode TIPO, gen(precinct)
recode precinct (1=2 "Mixed") (2=1 "Rural") (3=3 "Urban"), gen(precinct2018) 


* (8) Education

recode S3  (96 1 2 3=1 "Primaria")(4 5=2 "Secundaria") (6=3 "Preparatoria") (7 8 9=4 "Universidad+") (98=.), gen(education2018)

* (9) Income



* (10) Religion -

recode S14 (1=1 "Catholic") (11/96=2 "Other") (97=3 "Nones") (99=4 "DK"), gen(religion2018a)
recode S14 (1=1 "Catholic") (11/96=2 "Other") (97=3 "Nones") (99=.), gen(religion2018b)

* (11) Age

gen age2018=S1

* (12) Gender

recode S2 (1=0) (2=1 "Female"), gen(female2018)

