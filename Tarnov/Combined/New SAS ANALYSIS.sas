Data PRE30;
input year trt blk y;
datalines;
1	1	1	0.99
1	1	2	0.99
1	1	3	0.99
1	2	1	0.9
1	2	2	0.98
1	2	3	0.95
1	3	1	0.99
1	3	2	0.99
1	3	3	0.99
1	4	1	0.98
1	4	2	0.99
1	4	3	0.92
1	5	1	0.75
1	5	2	0.95
1	5	3	0.85
1	6	1	0.95
1	6	2	0.95
1	6	3	0.99
1	7	1	0.99
1	7	2	0.85
1	7	3	0.99
1	8	1	0.97
1	8	2	0.98
1	8	3	0.99
1	9	1	0.95
1	9	2	0.98
1	9	3	0.98
2	1	1	0.99
2	1	2	0.99
2	1	3	0.99
2	2	1	0.9
2	2	2	0.8
2	2	3	0.9
2	3	1	0.99
2	3	2	0.99
2	3	3	0.9
2	4	1	0.99
2	4	2	0.99
2	4	3	0.99
2	5	1	0.7
2	5	2	0.9
2	5	3	0.8
2	6	1	0.8
2	6	2	0.8
2	6	3	0.8
2	7	1	0.99
2	7	2	0.9
2	7	3	0.9
2	8	1	0.99
2	8	2	0.8
2	8	3	0.99
2	9	1	0.9
2	9	2	0.9
2	9	3	0.9
;
Proc print data=PRE30;
run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_;
 covtest homogeneity;
run;
proc glm data=PRE30;
class year trt blk;
model y=year;
means year/hovtest welch;
lsmeans trt/adj=sim diff lines;
run;
Proc glimmix data=PRE30 method=quadrature;
class trt blk;
model y=trt /d=beta;
random intercept /subject=blk;
lsmeans trt/diff lines cl ilink;
lsmestimate trt 'Pyroxasulfone vs Pyroxasulfone tank mix' 0 0 -2 0 0 2 2 -2 0/divisor=2; 
lsmestimate trt 'Lumax+aceto vs all other tank mix' 5 -1 -1 -1 0 0 0 -1 -1/divisor=5; 
run;


Data PRE41;
input trt blk y;
datalines;
1	1	0.99
1	2	0.99
1	3	0.99
2	1	0.9
2	2	0.9
2	3	0.95
3	1	0.97
3	2	0.99
3	3	0.98
4	1	0.9
4	2	0.95
4	3	0.9
5	1	0.5
5	2	0.75
5	3	0.65
6	1	0.75
6	2	0.9
6	3	0.95
7	1	0.99
7	2	0.8
7	3	0.95
8	1	0.9
8	2	0.92
8	3	0.99
9	1	0.82
9	2	0.9
9	3	0.85
;
Proc print data=PRE41;
run;
Proc glimmix data=PRE41 method=quadrature;
class trt blk;
model y=trt /d=beta;
random intercept /subject=blk;
lsmeans trt/diff lines cl ilink;
lsmestimate trt 'Pyroxasulfone vs Pyroxasulfone tank mix' 0 0 -2 0 0 2 2 -2 0/divisor=2; 
lsmestimate trt 'Lumax+aceto vs all other tank mix' 5 -1 -1 -1 0 0 0 -1 -1/divisor=5;
run;


Data PRE50;
input year trt blk y;
datalines;
1	1	1	0.98
1	1	2	0.98
1	1	3	0.99
1	2	1	0.9
1	2	2	0.85
1	2	3	0.9
1	3	1	0.95
1	3	2	1
1	3	3	0.95
1	4	1	0.9
1	4	2	0.92
1	4	3	0.75
1	5	1	0.4
1	5	2	0.8
1	5	3	0.5
1	6	1	0.85
1	6	2	0.95
1	6	3	0.95
1	7	1	0.95
1	7	2	0.7
1	7	3	0.97
1	8	1	0.92
1	8	2	0.92
1	8	3	0.99
1	9	1	0.8
1	9	2	0.9
1	9	3	0.9
2	1	1	0.99
2	1	2	0.95
2	1	3	0.99
2	2	1	0.6
2	2	2	0.5
2	2	3	0.65
2	3	1	0.95
2	3	2	0.9
2	3	3	0.99
2	4	1	0.9
2	4	2	0.75
2	4	3	0.95
2	5	1	0.5
2	5	2	0.4
2	5	3	0.45
2	6	1	0.9
2	6	2	0.99
2	6	3	0.9
2	7	1	0.95
2	7	2	0.9
2	7	3	0.99
2	8	1	0.99
2	8	2	0.75
2	8	3	0.85
;
Proc print data=PRE50;
run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
proc glm data=PRE50;
class year trt blk;
model y=year;
means year/hovtest welch;
lsmeans trt/adj=sim diff lines;
run;
Proc glimmix data=PRE50 method=quadrature;
class trt blk;
model y=trt /d=beta;
random intercept /subject=blk;
lsmeans trt/diff lines cl ilink;
lsmestimate trt 'Pyroxasulfone vs Pyroxasulfone tank mix' 0 0 -2 0 0 2 2 -2 0/divisor=2; 
lsmestimate trt 'Lumax+aceto vs all other tank mix' 5 -1 -1 -1 0 0 0 -1 -1/divisor=5;
run;

Data PREDensity;
input trt blk y;
datalines;
1	1	0.99
1	2	0.98
1	3	0.99
2	1	0.71
2	2	0.37
2	3	0.70
3	1	0.97
3	2	0.93
3	3	0.99
4	1	0.91
4	2	0.70
4	3	0.90
5	1	0.78
5	2	0.58
5	3	0.72
6	1	0.93
6	2	0.99
6	3	0.95
7	1	0.95
7	2	0.91
7	3	0.98
8	1	0.99
8	2	0.60
8	3	0.91
9	1	0.90
9	2	0.88
9	3	0.93
Proc print data=PREDensity;
run;
Proc glimmix data=PREDensity method=quadrature;
class trt blk;
model y=trt /d=beta;
random intercept /subject=blk;
lsmeans trt/diff lines cl ilink;
lsmestimate trt 'Pyroxasulfone vs Pyroxasulfone tank mix' 0 0 -2 0 0 2 2 -2 0/divisor=2; 
lsmestimate trt 'Lumax+aceto vs all other tank mix' 5 -1 -1 -1 0 0 0 -1 -1/divisor=5;
run;


/*Post emergence only*/
Data Post6;
Input year trt blk y;
datalines;
1	1	1	0.99
1	1	2	0.99
1	1	3	0.99
1	2	1	0.99
1	2	2	0.99
1	2	3	0.99
1	3	1	0.99
1	3	2	0.95
1	3	3	0.97
1	4	1	0.75
1	4	2	0.8
1	4	3	0.9
1	5	1	0.85
1	5	2	0.8
1	5	3	0.8
2	1	1	0.99
2	1	2	0.99
2	1	3	0.99
2	2	1	0.95
2	2	2	0.99
2	2	3	0.95
2	3	1	0.9
2	3	2	0.9
2	3	3	0.9
2	4	1	0.85
2	4	2	0.8
2	4	3	0.8
2	5	1	0.8
2	5	2	0.8
2	5	3	0.8
;
Proc Print data=Post6;
run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
proc glm data=Post6;
class year trt blk;
model y=year;
means year/hovtest welch;
lsmeans trt/adj=sim diff lines;
run;
PROC TABULATE NOSEPS FORMCHAR='          ' DATA =Post6;
class year trt blk;
 var y;
 table trt,year*n*y*f=12.0/rts=50;
 table trt,year*mean*y*f=12.0/rts=50;
 run;
Proc glimmix data=Post6 method=quadrature;
class year trt blk;
model y=trt /d=beta;
random intercept/ subject=blk;
lsmeans trt/diff lines cl ilink;
lsmestimate trt 'Glyphosate vs Callisto xtra' 3 -1 -1 0 -1/divisor=3; 
run;


/*Post emergence only 14*/
Data Post14;
Input year trt blk y;
datalines;
2013	1	1	0.99
2013	1	2	0.97
2013	1	3	0.96
2013	2	1	0.99
2013	2	2	0.99
2013	2	3	0.97
2013	3	1	0.95
2013	3	2	0.9
2013	3	3	0.95
2013	4	1	0.5
2013	4	2	0.65
2013	4	3	0.5
2013	5	1	0.9
2013	5	2	0.9
2013	5	3	0.9
2014	1	1	0.99
2014	1	2	0.99
2014	1	3	0.99
2014	2	1	0.95
2014	2	2	0.99
2014	2	3	0.8
2014	3	1	0.95
2014	3	2	0.85
2014	3	3	0.9
2014	4	1	0.5
2014	4	2	0.6
2014	4	3	0.5
2014	5	1	0.9
2014	5	2	0.85
2014	5	3	0.8
;
Proc Print data=Post14;
run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
proc glm data=Post14;
class year trt blk;
model y=year;
means year/hovtest welch;
lsmeans trt/adj=sim diff lines;
run;
Proc glimmix data=Post14 method=quadrature;
class trt blk;
model y=trt /d=beta;
random intercept/ subject=blk;
lsmeans trt/diff lines cl ilink;
lsmestimate trt 'Glyphosate vs Callisto xtra' 3 -1 -1 0 -1/divisor=3; 
run;




/*Post emergence only*/
Data Post22;
Input year trt blk y;
datalines;
1	1	1	0.9
1	1	2	0.97
1	1	3	0.95
1	2	1	0.99
1	2	2	0.99
1	2	3	0.97
1	3	1	0.95
1	3	2	0.9
1	3	3	0.95
1	4	1	0.5
1	4	2	0.6
1	4	3	0.5
1	5	1	0.95
1	5	2	0.95
1	5	3	0.95
2	1	1	0.99
2	1	2	0.95
2	1	3	0.95
2	2	1	0.85
2	2	2	0.9
2	2	3	0.55
2	3	1	0.95
2	3	2	0.9
2	3	3	0.95
2	4	1	0.5
2	4	2	0.6
2	4	3	0.5
2	5	1	0.95
2	5	2	0.9
2	5	3	0.9
;
Proc Print data=Post22;
run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
proc glm data=Post22;
class year trt blk;
model y=year;
means year/hovtest welch;
lsmeans trt/adj=sim diff lines;
run;
Proc glimmix data=Post22 method=quadrature;
class trt blk;
model y=trt /d=beta;
random intercept/ subject=blk;
lsmeans trt/diff lines cl ilink;
lsmestimate trt 'Glyphosate vs Callisto xtra' 3 -1 -1 0 -1/divisor=3; 
run;


/*Count*/
Data count;
input trt blk y;
datalines;
1	1	0.97
1	2	0.92
1	3	0.94
2	1	0.84
2	2	0.85
2	3	0.86
3	1	0.95
3	2	0.97
3	3	0.99
4	1	0.49
4	2	.
4	3	0.78
5	1	0.95
5	2	0.92
5	3	0.87
;
Proc print data=count;
Run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
Proc glimmix data=count method=quadrature;
Class trt blk;
model y=trt/d=beta;
random intercept/subject=blk;
lsmeans trt/diff lines cl ilink;
lsmestimate trt 'Glyphosate vs Callisto xtra' 3 -1 -1 0 -1/divisor=3; 
run;


/*Pre fb Post*/

Data Pre30;
Input year trt blk y;
datalines;
1	1	1	0.99
1	1	2	0.99
1	1	3	0.99
1	2	1	0.97
1	2	2	0.95
1	2	3	0.99
1	3	1	0.99
1	3	2	0.98
1	3	3	0.99
1	4	1	0.99
1	4	2	0.99
1	4	3	0.98
1	5	1	0.98
1	5	2	0.99
1	5	3	0.99
1	6	1	0.9
1	6	2	0.95
1	6	3	0.9
1	7	1	0.99
1	7	2	0.99
1	7	3	0.99
1	8	1	0.99
1	8	2	0.99
1	8	3	0.98
1	9	1	0.99
1	9	2	0.99
1	9	3	0.99
1	10	1	0.97
1	10	2	0.95
1	10	3	0.9
1	11	1	0.85
1	11	2	0.9
1	11	3	0.9
1	12	1	0.98
1	12	2	0.98
1	12	3	0.92
1	13	1	0.98
1	13	2	0.99
1	13	3	0.98
1	14	1	0.9
1	14	2	0.98
1	14	3	0.99
1	15	1	0.9
1	15	2	0.8
1	15	3	0.7
2	1	1	0.99
2	1	2	0.99
2	1	3	0.99
2	2	1	0.95
2	2	2	0.99
2	2	3	0.95
2	3	1	0.95
2	3	2	0.99
2	3	3	0.95
2	4	1	0.95
2	4	2	0.99
2	4	3	0.99
2	5	1	0.95
2	5	2	0.95
2	5	3	0.95
2	6	1	0.95
2	6	2	0.9
2	6	3	0.9
2	7	1	0.99
2	7	2	0.95
2	7	3	0.99
2	8	1	0.9
2	8	2	0.95
2	8	3	0.99
2	9	1	0.95
2	9	2	0.95
2	9	3	0.95
2	10	1	0.99
2	10	2	0.95
2	10	3	0.99
2	11	1	0.9
2	11	2	0.9
2	11	3	0.85
2	12	1	0.95
2	12	2	0.95
2	12	3	0.95
2	13	1	0.95
2	13	2	0.95
2	13	3	0.95
2	14	1	0.95
2	14	2	0.99
2	14	3	0.95
2	15	1	0.95
2	15	2	0.9
2	15	3	0.85
Proc print data=Pre30;run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
proc glm data=Pre30;
class year trt blk;
model y=year;
means year/hovtest welch;
lsmeans trt/adj=sim diff lines;
run;
PROC TABULATE NOSEPS FORMCHAR='          ' DATA =Pre30;
class year trt blk;
 var y;
 table trt,year*n*y*f=12.0/rts=50;
 table trt,year*mean*y*f=12.0/rts=50;
 run;
Proc glimmix data=Pre30 method=quadrature;
class year trt blk;
model y=trt /d=beta;
random intercept/ subject=blk;
lsmeans trt/diff lines cl ilink;
lsmestimate trt 'Lumax+Aatrex x Lumax' 0 0 3 3 3 0 -3 -3 -3 0 0 0 0 0 0/divisor=3;
lsmestimate trt 'Lumax vs others' 1 -1 1 1 1 1 1 0 1 -1 -1 -1 -1 -1 -1/divisor=7;
lsmestimate trt 'Lumax1500 vs Lumax2780' 0 0 0 0 0 3 -1 -1 -1 0 0 0 0 0 0/divisor=3;
Run;


Data Post32;
Input year trt blk y;
datalines;
1	1	1	0.98
1	1	2	0.99
1	1	3	0.99
1	2	1	0.95
1	2	2	0.90
1	2	3	0.90
1	3	1	0.90
1	3	2	0.99
1	3	3	0.99
1	4	1	0.98
1	4	2	0.99
1	4	3	0.99
1	5	1	0.99
1	5	2	0.99
1	5	3	0.99
1	6	1	0.99
1	6	2	0.99
1	6	3	0.99
1	7	1	0.98
1	7	2	0.99
1	7	3	0.99
1	8	1	0.95
1	8	2	0.98
1	8	3	0.95
1	9	1	0.95
1	9	2	0.99
1	9	3	0.99
1	10	1	0.95
1	10	2	0.95
1	10	3	0.90
1	11	1	0.98
1	11	2	0.99
1	11	3	0.99
1	12	1	0.99
1	12	2	0.99
1	12	3	0.99
1	13	1	0.90
1	13	2	0.90
1	13	3	0.90
1	14	1	0.98
1	14	2	0.99
1	14	3	0.99
1	15	1	0.99
1	15	2	0.97
1	15	3	0.99
2	1	1	0.99
2	1	2	0.99
2	1	3	0.99
2	2	1	0.80
2	2	2	0.80
2	2	3	0.80
2	3	1	0.99
2	3	2	0.99
2	3	3	0.99
2	4	1	0.95
2	4	2	0.90
2	4	3	0.99
2	5	1	0.99
2	5	2	0.99
2	5	3	0.99
2	6	1	0.85
2	6	2	0.90
2	6	3	0.85
2	7	1	0.99
2	7	2	0.99
2	7	3	0.99
2	8	1	0.80
2	8	2	0.90
2	8	3	0.80
2	9	1	0.95
2	9	2	0.85
2	9	3	0.95
2	10	1	0.99
2	10	2	0.90
2	10	3	0.95
2	11	1	0.99
2	11	2	0.95
2	11	3	0.99
2	12	1	0.90
2	12	2	0.99
2	12	3	0.95
2	13	1	0.90
2	13	2	0.80
2	13	3	0.85
2	14	1	0.95
2	14	2	0.95
2	14	3	0.99
2	15	1	0.99
2	15	2	0.99
2	15	3	0.99
;
Proc print data=Post32;run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
proc glm data=Post321;
class year trt blk;
model y=year;
means year/hovtest welch;
lsmeans trt/adj=sim diff lines;
run;
PROC TABULATE NOSEPS FORMCHAR='          ' DATA =Post21;
class year trt blk;
 var y;
 table trt,year*n*y*f=12.0/rts=50;
 table trt,year*mean*y*f=12.0/rts=50;
 run;
Proc glimmix data=Post32 method=quadrature;
class year trt blk;
model y=trt /d=beta;
random intercept/ subject=blk;
lsmeans trt/diff lines cl ilink;
lsmestimate trt 'Gly/Status x Status' 0 -3 3 0 0 0 0 -3 -3 0 0 0 0 0 0/divisor=3 ilink;
run;

/*Count*/

Data count1;
Input trt blk y;
datalines;
1	1	0.99
1	2	0.99
1	3	0.99
2	1	0.86
2	2	0.81
2	3	0.84
3	1	0.98
3	2	0.99
3	3	0.99
4	1	0.99
4	2	0.99
4	3	0.99
5	1	0.99
5	2	0.99
5	3	0.99
6	1	0.99
6	2	0.99
6	3	0.99
7	1	0.92
7	2	0.99
7	3	0.99
8	1	0.88
8	2	0.99
8	3	0.94
9	1	0.97
9	2	0.94
9	3	0.99
10	1	0.99
10	2	0.98
10	3	0.90
11	1	0.95
11	2	0.97
11	3	0.99
12	1	0.90
12	2	0.99
12	3	0.99
13	1	0.92
13	2	0.93
13	3	0.93
14	1	0.97
14	2	0.99
14	3	0.99
15	1	0.99
15	2	0.99
15	3	0.99
;
Proc print data=count1;
Run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
Proc glimmix data=count1 method=quadrature;
Class trt blk;
model y=trt/d=beta;
random intercept/subject=blk;
lsmeans trt/diff lines cl ilink;
run;

