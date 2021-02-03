/*Data Pre only*/

Data PRE;
input year trt blk y;
datalines;
1	1	1	99
1	1	2	99
1	1	3	99
1	2	1	90
1	2	2	98
1	2	3	95
1	3	1	99
1	3	2	99
1	3	3	99
1	4	1	98
1	4	2	99
1	4	3	92
1	5	1	75
1	5	2	95
1	5	3	85
1	6	1	95
1	6	2	95
1	6	3	99
1	7	1	99
1	7	2	85
1	7	3	99
1	8	1	97
1	8	2	98
1	8	3	99
1	9	1	95
1	9	2	98
1	9	3	98
2	1	1	99
2	1	2	99
2	1	3	97
2	2	1	90
2	2	2	95
2	2	3	95
2	3	1	95
2	3	2	99
2	3	3	97
2	4	1	95
2	4	2	90
2	4	3	95
2	5	1	80
2	5	2	80
2	5	3	85
2	6	1	90
2	6	2	95
2	6	3	95
2	7	1	90
2	7	2	95
2	7	3	95
2	8	1	95
2	8	2	90
2	8	3	95
2	9	1	90
2	9	2	99
2	9	3	95
;
Proc print data=PRE;
Run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
proc glm data=PRE;
class year trt blk;
model y=year;
means year/hovtest welch;
lsmeans trt/adj=sim diff lines;
run;
proc print;run;

PROC TABULATE NOSEPS FORMCHAR='          ' DATA = PRE;
class year trt blk;
 var y;
 table trt,year*n*y*f=12.0/rts=50;
 table trt,year*mean*y*f=12.0/rts=50;
 run;
Proc glimmix data=PRE;
class year trt blk;
model y=trt /d=beta;
random intercept/subject=blk;
lsmeans trt/diff lines;
run;

Data PRE2;
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
2	1	3	0.97
2	2	1	0.9
2	2	2	0.95
2	2	3	0.95
2	3	1	0.95
2	3	2	0.99
2	3	3	0.97
2	4	1	0.95
2	4	2	0.9
2	4	3	0.95
2	5	1	0.8
2	5	2	0.8
2	5	3	0.85
2	6	1	0.9
2	6	2	0.95
2	6	3	0.95
2	7	1	0.9
2	7	2	0.95
2	7	3	0.95
2	8	1	0.95
2	8	2	0.9
2	8	3	0.95
2	9	1	0.9
2	9	2	0.99
2	9	3	0.95
;
Proc print data=PRE2;
run;
Proc glimmix data=PRE2 method=quadrature;
class year trt blk;
model y=trt /d=beta;
random intercept /subject=blk;
lsmeans trt/diff lines cl ilink;
run;




Data PRE50;
input year trt blk y;
datalines;
1	1	1	0.99
1	1	2	0.98
1	1	3	0.99
1	2	1	0.9
1	2	2	0.85
1	2	3	0.8
1	3	1	0.95
1	3	2	0.99
1	3	3	0.95
1	4	1	0.85
1	4	2	0.92
1	4	3	0.8
1	5	1	0.4
1	5	2	0.75
1	5	3	0.65
1	6	1	0.5
1	6	2	0.9
1	6	3	0.85
1	7	1	0.97
1	7	2	0.75
1	7	3	0.95
1	8	1	0.9
1	8	2	0.9
1	8	3	0.98
1	9	1	0.8
1	9	2	0.85
1	9	3	0.85
2	1	1	0.99
2	1	2	0.99
2	1	3	0.95
2	2	1	0.85
2	2	2	0.7
2	2	3	0.85
2	3	1	0.95
2	3	2	0.9
2	3	3	0.99
2	4	1	0.8
2	4	2	0.8
2	4	3	0.9
2	5	1	0.6
2	5	2	0.4
2	5	3	0.5
2	6	1	0.8
2	6	2	0.95
2	6	3	0.9
2	7	1	0.9
2	7	2	0.85
2	7	3	0.95
2	8	1	0.95
2	8	2	0.9
2	8	3	0.9
2	9	1	0.85
2	9	2	0.9
2	9	3	0.9
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
PROC TABULATE NOSEPS FORMCHAR='          ' DATA = PRE;
class year trt blk;
 var y;
 table trt,year*n*y*f=12.0/rts=50;
 table trt,year*mean*y*f=12.0/rts=50;
 run;
Proc glimmix data=PRE50;
class year trt blk;
model y=trt /d=beta;
random blk;
lsmeans trt/diff lines cl ilink;
run;



Data count;
Input trt blk y;
datalines;
1	1	1
1	2	2
1	3	0
2	1	25
2	2	54
2	3	26
3	1	3
3	2	6
3	3	0
4	1	8
4	2	26
4	3	9
5	1	19
5	2	36
5	3	24
6	1	6
6	2	0
6	3	4
7	1	4
7	2	8
7	3	2
8	1	1
8	2	34
8	3	8
9	1	9
9	2	10
9	3	6
;
Proc print data=count;
run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
proc glimmix data=count;
 class blk trt;
 model y=trt/d=negbin;
 random intercept / subject=blk;
 nloptions maxiter=5000;
 lsmeans trt / diff lines ilink cl adjust=tukey;
run;



Data Plant_reduction;
input trt blk y;
datalines;
1	1	0.98
1	2	0.96
1	3	0.99
2	1	0.49
2	2	0.08
2	3	0.47
3	1	0.94
3	2	0.88
3	3	0.99
4	1	0.84
4	2	0.47
4	3	0.82
5	1	0.61
5	2	0.27
5	3	0.51
6	1	0.88
6	2	0.99
6	3	0.92
7	1	0.92
7	2	0.84
7	3	0.96
8	1	0.98
8	2	0.31
8	3	0.84
9	1	0.82
9	2	0.80
9	3	0.88
;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
Proc glimmix data=Plant_reduction;
Class trt blk;
model y=trt/d=beta;
random intercept/subject=blk;
lsmeans trt/diff lines cl ilink;
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
Proc glimmix data=Post6;
class year trt blk;
model y=trt /d=beta;
random intercept/ subject=blk;
lsmeans trt/diff lines cl ilink;
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
2	1	3	0.85
2	2	1	0.85
2	2	2	0.95
2	2	3	0.55
2	3	1	0.8
2	3	2	0.85
2	3	3	0.95
2	4	1	0.3
2	4	2	0.35
2	4	3	0.3
2	5	1	0.85
2	5	2	0.9
2	5	3	0.75
;
Proc Print data=Post22;
run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
Proc glimmix data=Post22;
class year trt blk;
model y=trt /d=beta;
random intercept/ subject=blk;
lsmeans trt/diff lines cl ilink;
run;

/*Count*/
Data count;
input trt blk y;
datalines;
1	1	0.94
1	2	0.86
1	3	0.90
2	1	0.71
2	2	0.69
2	3	0.76
3	1	0.92
3	2	0.94
3	3	0.98
4	1	0.10
4	2	0.59
4	3	0.61
5	1	0.92
5	2	0.86
5	3	0.78
;
Proc print data=count;
Run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
Proc glimmix data=count;
Class trt blk;
model y=trt/d=beta;
random intercept/subject=blk;
lsmeans trt/diff lines cl ilink;
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
Proc glimmix data=Pre30;
class year trt blk;
model y=trt /d=beta;
random intercept/ subject=blk;
lsmeans trt/diff lines cl ilink;
run;


Data Post21;
Input year trt blk y;
datalines;
1	1	1	0.98
1	1	2	0.99
1	1	3	0.99
1	2	1	0.95
1	2	2	0.95
1	2	3	0.99
1	3	1	0.99
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
1	10	3	0.9
1	11	1	0.98
1	11	2	0.99
1	11	3	0.99
1	12	1	0.99
1	12	2	0.99
1	12	3	0.99
1	13	1	0.9
1	13	2	0.9
1	13	3	0.9
1	14	1	0.98
1	14	2	0.99
1	14	3	0.99
1	15	1	0.99
1	15	2	0.97
1	15	3	0.99
2	1	1	0.99
2	1	2	0.99
2	1	3	0.99
2	2	1	0.95
2	2	2	0.95
2	2	3	0.95
2	3	1	0.99
2	3	2	0.99
2	3	3	0.99
2	4	1	0.99
2	4	2	0.99
2	4	3	0.95
2	5	1	0.99
2	5	2	0.99
2	5	3	0.99
2	6	1	0.95
2	6	2	0.99
2	6	3	0.95
2	7	1	0.99
2	7	2	0.99
2	7	3	0.99
2	8	1	0.8
2	8	2	0.9
2	8	3	0.95
2	9	1	0.95
2	9	2	0.85
2	9	3	0.9
2	10	1	0.99
2	10	2	0.9
2	10	3	0.95
2	11	1	0.99
2	11	2	0.99
2	11	3	0.99
2	12	1	0.95
2	12	2	0.99
2	12	3	0.95
2	13	1	0.9
2	13	2	0.9
2	13	3	0.9
2	14	1	0.95
2	14	2	0.95
2	14	3	0.99
2	15	1	0.99
2	15	2	0.99
2	15	3	0.95
Proc print data=Post21;run;
proc glimmix plot=residualpanel;
 class trt;
 model y=trt;
 random _residual_ / group=trt;
 covtest homogeneity;
run;
proc glm data=Post21;
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
Proc glimmix data=Post21;
class year trt blk;
model y=trt /d=beta;
random intercept/ subject=blk;
lsmeans trt/diff lines cl ilink;
run;

/*Count*/

Data count1;
Input trt blk y;
datalines;
1	1	0.99
1	2	0.99
1	3	0.99
2	1	0.77
2	2	0.70
2	3	0.74
3	1	0.96
3	2	1.00
3	3	0.98
4	1	0.99
4	2	0.99
4	3	0.99
5	1	0.99
5	2	0.98
5	3	0.99
6	1	0.98
6	2	0.98
6	3	0.98
7	1	0.87
7	2	0.99
7	3	0.99
8	1	0.81
8	2	0.99
8	3	0.91
9	1	0.94
9	2	0.91
9	3	0.99
10	1	0.99
10	2	0.96
10	3	0.83
11	1	0.92
11	2	0.94
11	3	0.99
12	1	0.83
12	2	0.98
12	3	0.98
13	1	0.87
13	2	0.89
13	3	0.89
14	1	0.94
14	2	0.98
14	3	0.99
15	1	0.98
15	2	0.98
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
Proc glimmix data=count1;
Class trt blk;
model y=trt/d=beta;
random intercept/subject=blk;
lsmeans trt/diff lines cl ilink;
run;

