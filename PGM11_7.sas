data surgery;
 input study treat y n @@ ; * y successes out of n trials;
 treat2 = treat; 
 no=n-y;
 if treat = 1 then treat = .5; else treat = -.5;
cards;
1 1 7 15    1 0 11 13
2 1 8 19    2 0 8 16
3 1 5 34    3 0 4 39
4 1 7 36    4 0 4 31
5 1 3 12    5 0 0 12
6 1 4 7      6 0 4 4
7 1 4 17    7 0 13 24
8 1 1 16    8 0 13 16
9 1 3 14    9 0 7 22
10 1 2 38  10 0 12 32
11 1 6 12  11 0 8 8
12 1 2 7   12 0 7 9
13 1 9 21  13 0 7 24
14 1 7 21  14 0 5 25
15 1 3 25  15 0 11 32
16 1 4 11  16 0 6 10
17 1 2 10  17 0 8 10
18 1 1 31  18 0 4 27
19 1 4 28  19 0 15 31
20 1 7 43  20 0 16 43
21 1 6 40  21 0 13 21
22 1 4 18  22 0 5 39
23 1 14 68 23 0 13 74
24 1 6 21  24 0 8 21
25 1 0 6   25 0 6 6
26 1 1 10  26 0 5 15
27 1 5 17  27 0 5 15
28 1 0 10  28 0 12 14
29 1 0 22  29 0 8 24
30 1 2 18  30 0 10 21
31 1 1 15  31 0 7 13
32 1 8 24  32 0 15 27
33 1 6 12  33 0 7 9
34 1 0 20  34 0 5 23
35 1 4 17  35 0 2 16
36 1 10 40 36 0 12 20
37 1 3 16  37 0 2 16
38 1 4 34  38 0 5 19
39 1 7 38  39 0 15 37
40 1 0 34  40 0 34 34  
41 1 0 9   41 0 0 16
;

/*���� (11.7)�� ����*/
proc nlmixed; * random effects, no interaction;
pi = exp(a + beta*treat)/(1+exp(a + beta*treat)); * logistic formula for prob;
model y ~ binomial(n, pi);
random a ~ normal(alpha, sig*sig) subject=study;

/*���� (11.8)�� ����*/
proc nlmixed qpoints=50; * correlated random effects, interaction;
pi = exp(alpha + a + beta*treat + b*treat)/(1+exp(alpha + a + beta*treat + b*treat));
model y ~ binomial(n, pi);
random a b ~ normal([0,0], [sig_a*sig_a, rho ,sig_b*sig_b]) subject=study;
predict beta + b out=new2;
run;
