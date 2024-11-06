*Updated: Oct 7, 2024.

*** 2024 ****

** WEIGHT VARIABLE: PONDERADOR

* (1) Vote choice

**including non-response
recode PELEPDTE (1 2 3 14 18=1 "PAN-PRI-PRD") (4 5 7 13 15 16 17=2 "MORENA-PT-Verde") (6=3 "MC") (9 10 11 12=4 "DK"), gen(vote2024a)
**excluding non-response
recode vote2024a (1=1 "PAN-PRI-PRD") (2=2 "MORENA-PT-Verde") (3=3 "MC") (4=.), gen(vote2024b)

* (2) Partisanship 

**including non-response
recode P4 (1 2=1 "Panista") (3 4=2 "Priista") (7 8=3 "Morenista") (.=4 "MC") ///
(5 6 96=5 "Other") (97=6 "Independent") (98 99=7 "DK"), gen(pid2024a) 

replace pid2024a=4 if P4_1==3

**excluding non-response
recode P4 (1 2=1 "Panista") (3 4=2 "Priista") (7 8=3 "Morenista") (.=4 "MC") ///
(5 6 96=5 "Other") (97=6 "Independent") (98 99=.), gen(pid2024b) 

replace pid2024b=4 if P4_1==3


* (3) Presidential Approval

**including non-response
recode P2 (1=4 "Approval") (2=3) (3=2) (4=1 "Dissaproval") (98 99=5 "DK"), gen(approval2024a)

**excluding non-response
recode P2 (1=4 "Approval") (2=3) (3=2) (4=1 "Dissaproval") (98 99=.), gen(approval2024b)


* (4) Left-Right Ideology

recode P20 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(95 98 99=11 "DK"), gen(ideology2024a)
recode P20 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(95 98 99=.), gen(ideology2024b)


* (5) Satisfaction with democracy

**including non-response
recode P24 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Very Disatisfied") (98 99=5 "DK"), gen(satisfaction2024a)

*excluding non-response
recode P24 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Very Disatisfied") (98 99=.), gen(satisfaction2024b)


* (6) Feeling Thermometers

*excluding non-response

*pan
recode P16_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(pan2024a)
recode P16_1 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(pan2024b)

*pri
recode P16_2 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(pri2024a)
recode P16_2 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(pri2024b)

*prd
recode P16_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(prd2024a)
recode P16_3 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(prd2024b)

*morena
recode P16_4 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(morena2024a)
recode P16_4 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(morena2024b)

*amlo
recode P17_4 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(amlo2024a)
recode P17_4 (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(amlo2024b)


* (7) Precinct: rural, mixed, urban

encode TIPO, gen(precinct)
recode precinct (1=2 "Mixed") (2=1 "Rural") (3=3 "Urban"), gen(precinct2024) 

* (8) Education

recode S3 (96 1 2 3=1 "Primaria")(4 5=2 "Secundaria") (6=3 "Preparatoria") (7 8 9=4 "College+") (98 99=.), gen(education2024)

* (9) Income: 
* en términos de comparabilidad con otros años, usar income2024b

recode S8 (0/7468=1 "0-1 SM") (7469/14936=2 "1-2 SM") (14937/22904=3 "2-3 SM") ///
(22405/29872=4 "3-4 SM") (29873/37340=5 "4-5 SM") (37341/52276=6 "5-7 SM") ///
(52277/74680=7 "7-10 SM") (74681/224040=8 "10-30SM") (224040/900000=9 "30+") ///
( 988888  999999=.), gen(income2024a)

replace income2024a=1 if S9_1==1
replace income2024a=2 if S9_1==2
replace income2024a=3 if S9_1==3
replace income2024a=4 if S9_1==4
replace income2024a=5 if S9_1==5
replace income2024a=6 if S9_1==6
replace income2024a=7 if S9_1==7
replace income2024a=8 if S9_1==8
replace income2024a=9 if S9_1==9

recode income2024a (1=1 "0-1 SM") (2=2 "1-2 SM") /// 
(3=3 "2-3 SM") (4 5=4 "3-5 SM") /// 
(6 7 8 9=5 "5+ SM"), gen(income2024b)

* (10) Religion

recode S13 (1=1 "Catholic") (2=2 "Other") (97=3 "Nones") (99=.), gen(religion2024)

* (11) Age

gen age2024=S1
replace age2024=. if age2024==99

* (12) Gender

recode S2 (1=0) (2=1 "Female"), gen(female2024)

