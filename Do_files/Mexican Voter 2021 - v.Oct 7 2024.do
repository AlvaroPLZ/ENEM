
*Updated: Oct 7, 2024.

*** 2021 ****

** WEIGHT VARIABLE: PONDERADOR

* (1) Vote choice

**including non-response
recode PELEDIP (1 20 21 23=1 "PAN") (2=2 "PRI") (3=3 "PRD") (4=4 "Verde") (5 19=5 "PT") (6=6 "MC") (7 17=7 "MORENA") (8/11=8 "Other") (12/15=9 "DK"), gen(vote2021a)
**excluding non-response
recode PELEDIP (1 20 21 23=1 "PAN") (2=2 "PRI") (3=3 "PRD") (4=4 "Verde") (5 19=5 "PT") (6=6 "MC") (7 17=7 "MORENA") (8/11=8 "Other") (12/15=.), gen(vote2021b)
**only two major coalitions
recode vote2021b (1 2 3=1 "PAN PRI PRD") (4 5 7=2 "MORENA VERDE PT") (6 8=3 "OTHER"), gen(vote2021c)

* (2) Partisanship 

**including non-response
recode P3 (1 2=1 "PAN") (3 4=2 "PRI") (7 8=3 "MORENA") (5 6 96=4 "OTHER") (97=5 "INDEP") (98 99=6 "DK"), gen(pid2021a)
**excluding non-response
recode P3 (1 2=1 "PAN") (3 4=2 "PRI") (7 8=3 "MORENA") (5 6 96=4 "OTHER") (97=5 "INDEP") (98 99=.), gen(pid2021b)

* (3) Presidential Approval

**including non-response
recode P2 (1=4 "Approve") (2=3) (3=2) (4=1 "Dissaprove") (98 99=5 "DK"), gen(approval2021a)
**excluding non-response
recode P2 (1=4 "Approve") (2=3) (3=2) (4=1 "Dissaprove") (98 99=.), gen(approval2021b)

* (4) Left-Right Ideology

recode P25 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(98 99=11 "DK"), gen(ideology2021a)
recode P25 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(98 99=.), gen(ideology2021b)


* (5) Satisfaction with democracy

**including non-response
recode P29 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Very Disatisfied") (98 99=5 "DK"), gen(satisfaction2021a)
*excluding non-response
recode P29 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Very Disatisfied") (98 99=.), gen(satisfaction2021b)

* (6) Feeling Thermometers


*pan
recode P22_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(pan2021a)
recode P22_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(pan2021b)

*pri
recode P22_2 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(pri2021a)
recode P22_2 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(pri2021b)

*prd
recode P22_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(prd2021a)
recode P22_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(prd2021b)

*morena
recode P22_4 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(morena2021a)
recode P22_4 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(morena2021b)

*amlo
recode P23_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(amlo2021a)
recode P23_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(amlo2021b)


* (7) Seccion: rural, mixed, urban

*PENDING: this variable will be included in the next version of the dataset


* (8) Education

recode PC  (96 1 2 3=1 "Primaria")(4 5=2 "Secundaria") (6=3 "Preparatoria") (7 8 9=4 "Universidad+") (99=.), gen(education2021)

* (9) Income: 
* en términos de comparabilidad con otros años, usar income2021b

recode S10 (0/4282=1 "0-1 SM") (4283/8564=2 "1-2 SM") /// 
(8565/12846=3 "2-3 SM") (12847/17128=4 "3-4 SM") /// 
(17129/21410=5 "4-5 SM") (21411/29974=6 "5-7 SM") /// 
(29975/955555=7 "7+ SM") (988888 999999=.), gen(income2021a)


replace income2021a=1 if S10_1==1
replace income2021a=2 if S10_1==2
replace income2021a=3 if S10_1==3
replace income2021a=4 if S10_1==4
replace income2021a=5 if S10_1==5
replace income2021a=6 if S10_1==6
replace income2021a=7 if S10_1==7

recode income2021a (1=1 "0-1 SM") (2=2 "1-2 SM") /// 
(3=3 "2-3 SM") (4 5=4 "3-5 SM") /// 
(6 7=5 "5+ SM"), gen(ingreso2021b)

* (10) Religion -

recode S14 (1=1 "Catholic") (2=2 "Other") (97=3 "Nones") (99=4 "DK"), gen(religion2021a)
recode S14 (1=1 "Catholic") (2=2 "Other") (97=3 "Nones") (99=.), gen(religion2021b)

* (11) Age

gen age2021=S1
replace age2021=. if age2021==999

* (12) Gender

recode S2 (1=0) (2=1 "Female"), gen(female2021)

