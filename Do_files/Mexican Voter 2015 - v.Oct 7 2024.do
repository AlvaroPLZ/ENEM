
*Updated: Oct 7, 2024.

*** 2015 ****

** WEIGHT VARIABLE: PONDERADOR

* (1) Vote choice

**including non-response
recode peledip (1=1 "PAN") (2=2 "PRI") (4=3 "PRD") (35=4 "MORENA") (9=5 "Verde") (8=6 "PT")  ///
(19=7 "MC") (34=8 "Nueva Alianza") (36/39=9 "Other") (11 12 13 14=10 "DK"), gen(vote2015a)

**excluding non-response
recode peledip (1=1 "PAN") (2=2 "PRI") (4=3 "PRD")  (35=4 "MORENA") (9=5 "Verde") (8=6 "PT")  ///
(19=7 "MC") (34=8 "Nueva Alianza") (36/39=9 "Other") (11 12 13 14=.), gen(vote2015b)


* (2) Partisanship 

**including non-response

recode p9 (1 2=1 "PAN") (3 4=2 "PRI") (5 6=3 "PRD") ///
(7 8=4 "Verde") (9 10=5 "Morena") ///
(96=6 "Other") (97=7 "Independent") (98/99=8 "DK"), gen(pid2015a)

**excluding non-response

recode p9 (1 2=1 "PAN") (3 4=2 "PRI") (5 6=3 "PRD") ///
(7 8=4 "Verde") (9 10=5 "Morena") ///
(96=6 "Other") (97=7 "Independent") (98/99=.), gen(pid2015b)

* (3) Presidential Approval

**including non-response

recode p48 (1=4 "Approve") (2=3) (3=2) (4=1 "Dissaprove") (8 9=5 "DK"), gen(approval2015a)

**including non-response

recode p48 (1=4 "Approve") (2=3) (3=2) (4=1 "Dissaprove") (8 9=.), gen(approval2015b)

* (4) Left-Right Ideology


recode p21 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(95 98=11 "DK"), gen(ideology2015a)
recode p21 (0=0 "Left")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Right")(95 98=.), gen(ideology2015b)


* (5) Satisfaction with democracy

**including non-response
recode p23 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Very Disatisfied") (8 9=5 "DK"), gen(satisfaction2015a)
*excluding non-response
recode p23 (1=4 "Very Satisfied") (2=3) (3=2) (4=1 "Very Disatisfied") (8 9=.), gen(satisfaction2015b)


* (6) Feeling Thermometers

*pan
recode p19a (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(pan2015a)
recode p19a (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(pan2015b)

*pri
recode p19b (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(pri2015a)
recode p19b (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(pri2015b)

*prd
recode p19c (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(prd2015a)
recode p19c (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(prd2015b)

*morena
recode p19h (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=11 "DK"), gen(morena2015a)
recode p19h (0=0 "Very bad opinion")(1=1)(2=2)(3=3)(4=4)(5=5)(6=6)(7=7)(8=8)(9=9)(10=10 "Very good opinion")(96 98 99=.), gen(morena2015b)



* (7) Precinct: rural, mixed, urban
encode TIPO, gen(precinct)
recode precinct (1=2 "Mixed") (2=1 "Rural") (3=3 "Urban"), gen(precinct2015) 

* (8) Education

recode ps3 (96 1 2 3=1 "Primaria")(4 5=2 "Secundaria") (6=3 "Preparatoria") (7 8 9=4 "College+") (98 99=.), gen(education2015)


* (9) Income


* (10) Religion 

recode ps22 (1=1 "Catholic") (3/15=2 "Other") (97=3 "Nones") (99=4 "DK"), gen(religion2015a)
recode ps22 (1=1 "Catholic") (3/15=2 "Other") (97=3 "Nones") (99=.), gen(religion2015b)


* (11) Age

gen age2015=ps1


* (12) Gender

recode ps2 (1=0) (2=1 "Female"), gen(female2015)



