
*Updated: Oct 7, 2024.

*** 2012 ****

** WEIGHT VARIABLE: PONDERADOR

* (1) Vote choice

**including non-response
recode pelepre (1=1 "PAN") (2 9 29 =2 "PRI") (4 8 19 48/51=3 "PRD-AMLO") (34=4 "Quadri") ///
(11/14=5 "DK"), gen(vote2012a)

**excluding non-response
recode pelepre (1=1 "PAN") (2 9 29 =2 "PRI") (4 8 19 48/51=3 "PRD-AMLO") (34=4 "Quadri") ///
(11/14=.), gen(vote2012b)

* (2) Partisanship 

**including non-response

recode p23_a1 (1=1 "PAN") (2=2 "PRI") (3=3 "PRD") (4/8=4 "Other") (98 99=6 "DK"), gen(pid2012a)
replace pid2012a=5 if p23==2
replace pid2012a=6 if p23==8
replace pid2012a=6 if p23==9

label define pid 1 "PAN" 2 "PRI" 3 "PRD" 4 "Other" 5 "Indep" 6 "DK"
label values pid2012a pid

**excluding non-response

recode p23_a1 (1=1 "PAN") (2=2 "PRI") (3=3 "PRD") (4/8=4 "Other") (98 99=.), gen(pid2012b)
replace pid2012b=5 if p23==2

label define pidb 1 "PAN" 2 "PRI" 3 "PRD" 4 "Other" 5 "Indep" 
label values pid2012b pidb

* (3) Presidential Approval

**including non-response

recode p42 (1=4 "Approve") (2=3) (3=2) (4=1 "Dissaprove") (8 9=5 "DK"), gen(approval2012a)

**including non-response

recode p42 (1=4 "Approve") (2=3) (3=2) (4=1 "Dissaprove") (8 9=.), gen(approval2012b)

* (4) Left-Right Ideology

recode p19 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(95 98=11 "DK"), gen(ideology2012a)
recode p19 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(95 98=.), gen(ideology2012b)

* (5) Satisfaction with democracy

**including non-response
recode p22 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Very Disatisfied") (8 9=5 "DK"), gen(satisfaction2012a)
*excluding non-response
recode p22 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Very Disatisfied") (8 9=.), gen(satisfaction2012b)

* (6) Feeling Thermometers


*pan
recode p16_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 =11 "DK"), gen(pan2012a)
recode p16_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 =.), gen(pan2012b)

*pri
recode p16_2 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 =11 "DK"), gen(pri2012a)
recode p16_2 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 =.), gen(pri2012b)

*prd
recode p16_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 =11 "DK"), gen(prd2012a)
recode p16_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 =.), gen(prd2012b)

*amlo
recode p17_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 =11 "DK"), gen(amlo2012a)
recode p17_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 =.), gen(amlo2012b)


* (7) Seccion: rural, mixed, urban

* (8) Education

recode s3 (96 1 2 3=1 "Primaria")(4 5=2 "Secundaria") (6=3 "Preparatoria") (7 8 9=4 "College+") (98 99=.), gen(education2012)

* (9) Income (usar únicamente income2012b)

recode s22 (0/1870=1 "0-1 SM") (1871/3740=2 "1-2 SM") /// 
(3741/5610=3 "2-3 SM")  /// 
(5611/9350=4 "3-5 SM") (9351/53500=5 "5+SM")(988888  999999=.), gen(income2012b)

recode s23 (1=1 "0-1 SM") (2=2 "1-2 SM")(3=3 "2-3 SM")(4/5=4 "3-5 SM")(6/20=5 "5+SM")(98 99=.), gen(income2012a)

replace income2012b=1 if income2012a==1
replace income2012b=2 if income2012a==2
replace income2012b=3 if income2012a==3
replace income2012b=4 if income2012a==4
replace income2012b=5 if income2012a==5


* (10) Religion 

recode s30 (1=1 "Catholic") (2/10=2 "Other") (97=3 "Nones") (99=4 "DK"), gen(religion2012a)
recode s30 (1=1 "Catholic") (2/10=2 "Other") (97=3 "Nones") (99=.), gen(religion2012b)


* (11) Age

gen age2012=s1


* (12) Gender

recode s2 (1=0) (2=1 "Female"), gen(female2012)


