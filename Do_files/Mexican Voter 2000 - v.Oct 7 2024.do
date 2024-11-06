*Updated: Oct 7, 2024.


*** 2000 ****

** WEIGHT VARIABLE: PONDERADOR

* (1) Vote choice

**including non-response
recode pelea (1=1 "PAN") (2=2 "PRI") (15=3 "PRD Alianza") (10 =5 "Other") (11/13 99=6 "DK"), gen(vote2000a)

**excluding non-response
recode pelea (1=1 "PAN") (2=2 "PRI") (15=3 "PRD Alianza") (10  8=5 "Other") (11/13 99=.), gen(vote2000b)


* (2) Partisanship 

**including non-response

recode p6a (1=1 "PAN") (2=2 "PRI") (3=3 "PRD") (4/9=4 "Other") (10 11=6 "DK"), gen(pid2000a)
replace pid2000a=5 if p6==2
replace pid2000a=6 if p6==3
replace pid2000a=6 if p6==4

label define pid 1 "PAN" 2 "PRI" 3 "PRD" 4 "Other" 5 "Indep" 6 "DK", replace
label values pid2000a pid

**excluding non-response

recode p6a (1=1 "PAN") (2=2 "PRI") (3=3 "PRD") (4/9=4 "Other") (10 11=.), gen(pid2000b)
replace pid2000b=5 if p6==2

label define pidb 1 "PAN" 2 "PRI" 3 "PRD" 4 "Other" 5 "Indep", replace
label values pid2000b pidb 


* (3) Presidential Approval

**including non-response

recode pacu (1=4 "Approve") (2=3) (3=2) (4=1 "Dissaprove") (5 6=5 "DK"), gen(approval2000a)

**including non-response

recode pacu (1=4 "Approve") (2=3) (3=2) (4=1 "Dissaprove") (5 6=.), gen(approval2000b)


* (4) Left-Right Ideology


recode p20_1 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(11 12=11 "DK"), gen(ideology2000a)
recode p20_1 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(11 12=.), gen(ideology2000b)



* (5) Satisfaction with democracy

**including non-response
recode p4 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Not satisfied at all") (5 6=5 "DK"), gen(satisfaction2000a)
*excluding non-response
recode p4 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Not satisfied at all") (5 6=.), gen(satisfaction2000b)


* (6) Feeling Thermometers


*pan
recode p10_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(11 12 13 =11 "DK"), gen(pan2000a)
recode p10_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(11 12 13 =.), gen(pan2000b)

*pri
recode p10_2 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(11 12 13 =11 "DK"), gen(pri2000a)
recode p10_2 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(11 12 13 =.), gen(pri2000b)

*prd
recode p10_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(11 12 13 =11 "DK"), gen(prd2000a)
recode p10_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(11 12 13  =.), gen(prd2000b)


* (7) Precinct: rural, mixed, urban

encode TIPO, gen(precinct)
recode precinct (1=0 "Rural") (2=1 "Urban"), gen(precinct2000) 

* (8) Education

recode escol (1 2 3 4=1 "Primaria")(5 6=2 "Secundaria") (7 8=3 "Preparatoria") (9=4 "College+"), gen(education2000)


* (9) Income

* (10) Religion -- we could create a more refined "other" category (upon request)

recode se23 (1=1 "Catholic") (10/14 16/26=2 "Other") (15 97=3 "Nones") (98 99=4 "DK"), gen(religion2000a)
recode se23 (1=1 "Catholic") (10/14 16/26=2 "Other") (15 97=3 "Nones") (98 99=.), gen(religion2000b)

* (11) Age


* (12) Gender 

recode sex (1=0) (2=1 "Female"), gen(female2000)


