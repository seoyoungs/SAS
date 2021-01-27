/* Opinion on legalizing abortion of Table 10.4*/
data abortion;
input sex poor single any count;
datalines;
1 1 1 1 342
1 1 1 0 26
1 1 0 1 11
1 1 0 0 32
1 0 1 1 6
1 0 1 0 21
1 0 0 1 19
1 0 0 0 356
2 1 1 1 440
2 1 1 0 25
2 1 0 1 14
2 1 0 0 47
2 0 1 1 14
2 0 1 0 18
2 0 0 1 22
2 0 0 0 457
;
data new;  set abortion;
   sex = sex-1; case = _n_;
   q1=1; q2=0; resp = poor; output;
   q1=0; q2=1; resp = single; output;
   q1=0; q2=0; resp = any;  output;
   drop poor single any;
run;

proc nlmixed  data=new qpoints = 50;
   parms alpha=0  beta1=.8  beta2=.3  gamma=0  sigma=8.6;
   eta = alpha + beta1*q1 + beta2*q2 + gamma*sex + u;
   p = exp(eta)/(1 + exp(eta));
   model resp ~ binary(p);
   random u ~ normal(0,sigma*sigma) subject = case;
   replicate count;
run;

/*Marginal model GEE*/
proc genmod data=new descending;  
  class case;
  weight count;
  model resp = q1 q2 sex  / dist=bin link=logit type3;
  repeated subject=case / type=exch corrw;
run;
