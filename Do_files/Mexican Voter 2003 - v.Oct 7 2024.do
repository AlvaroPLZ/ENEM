*Updated: Oct 7, 2024.


*** 2003 ****

** WEIGHT VARIABLE: PONDERADOR

* (1) Vote choice (in this election, the PRI-Verde was a partial coalition. That's why there are two PELE variables. For simplicity, I merged both variables into a single one).

replace pelea1=. if pelea1==0
replace pelea3=. if pelea3==0

**including non-response

gen vote2003a=. 
replace vote2003a=1 if pelea1==1
replace vote2003a=1 if pelea3==1

replace vote2003a=2 if pelea1==2
replace vote2003a=2 if pelea3==2
replace vote2003a=2 if pelea1==9

replace vote2003a=3 if pelea1==4
replace vote2003a=3 if pelea3==4

replace vote2003a=4 if pelea1==8
replace vote2003a=4 if pelea1==10
replace vote2003a=4 if pelea1==18
replace vote2003a=4 if pelea1==19
replace vote2003a=4 if pelea1==30
replace vote2003a=4 if pelea1==31
replace vote2003a=4 if pelea1==32

replace vote2003a=4 if pelea3==8
replace vote2003a=4 if pelea3==10
replace vote2003a=4 if pelea3==18
replace vote2003a=4 if pelea3==19
replace vote2003a=4 if pelea3==30
replace vote2003a=4 if pelea3==31
replace vote2003a=4 if pelea3==32

replace vote2003a=5 if pelea1==11
replace vote2003a=5 if pelea1==12
replace vote2003a=5 if pelea1==13
replace vote2003a=5 if pelea1==14

replace vote2003a=5 if pelea3==11
replace vote2003a=5 if pelea3==12
replace vote2003a=5 if pelea3==13
replace vote2003a=5 if pelea3==14

label define vote2003alabel 1 "PAN" 2 "PRI-Verde" 3 "PRD" 4 "Other" 5 "DK"
label val vote2003a vote2003alabel

**excluding non-response

gen vote2003b=vote2003a
replace vote2003b=. if vote2003b==5

label define vote2003blabel 1 "PAN" 2 "PRI-Verde" 3 "PRD" 4 "Other" 
label val vote2003b vote2003alabel


* (2) Partisanship 

**including non-response

recode p18a_1 (1=1 "PAN") (2=2 "PRI") (3=3 "PRD") (4/10=4 "Other") (98 99=6 "DK") (0=.), gen(pid2003a)
replace pid2003a=5 if p18==2
replace pid2003a=6 if p18==8
replace pid2003a=6 if p18==9

label define pid 1 "PAN" 2 "PRI" 3 "PRD" 4 "Other" 5 "Indep" 6 "DK"
label values pid2003a pid

**excluding non-response

recode p18a_1 (1=1 "PAN") (2=2 "PRI") (3=3 "PRD") (4/10=4 "Other") (0 98 99=.), gen(pid2003b)
replace pid2003b=5 if p18==2

label define pidb 1 "PAN" 2 "PRI" 3 "PRD" 4 "Other" 5 "Indep" 
label values pid2003b pidb



* (3) Presidential Approval

**including non-response

recode p28 (1=4 "Approve") (2=3) (3=2) (4=1 "Dissaprove") (8 9=5 "DK"), gen(approval2003a)

**including non-response

recode p28 (1=4 "Approve") (2=3) (3=2) (4=1 "Dissaprove") (8 9=.), gen(approval2003b)


* (4) Left-Right Ideology

recode p24 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(98 99=11 "DK"), gen(ideology2003a)
recode p24 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(98 99=.), gen(ideology2003b)


* (5) Satisfaction with democracy

**including non-response
recode p8 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Very Disatisfied") (8 9=5 "DK"), gen(satisfaction2003a)
*excluding non-response
recode p8 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Very Disatisfied") (8 9=.), gen(satisfaction2003b)


* (6) Feeling Thermometers


*pan
recode p19_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(12 98 99 =11 "DK"), gen(pan2003a)
recode p19_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(12 98 99 =.), gen(pan2003b)

*pri
recode p19_2 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(12 98 99 =11 "DK"), gen(pri2003a)
recode p19_2 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(12 98 99 =.), gen(pri2003b)

*prd
recode p19_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(12 98 99 =11 "DK"), gen(prd2003a)
recode p19_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(12 98 99  =.), gen(prd2003b)


* (7) Precinct: rural, mixed, urban

* (8) Education

recode s3 (1 2 3 4=1 "Primaria")(5 6=2 "Secundaria") (7 8=3 "Preparatoria") (9=4 "College+") (98 99=.), gen(education2003)


* (9) Income

* (10) Religion -- we could create a more refined "other" category (upon request)

recode s23 (1=1 "Catholic") (10/28=2 "Other") (97=3 "Nones") (99=4 "DK"), gen(religion2003a)
recode s23 (1=1 "Catholic") (10/28=2 "Other") (97=3 "Nones") (99=.), gen(religion2003b)

* (11) Age

gen age2003=s2
replace age2003=. if age2003==99

* (12) Gender 

recode s1 (1=0) (2=1 "Female"), gen(female2003)

