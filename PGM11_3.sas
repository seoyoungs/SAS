/* Teratology Overdispersion Analyses of Table 9.4*/ 
data teratology;
  input litter group n y ;
  z2=0; z3=0; z4=0;
  if group=2 then z2=1; if group=3 then z3=1; if group=4 then z4=1;
cards;
 1  1 10 1   
 2 1 11 4   
 3 1 12 9   
 4 1 4 4     
 5 1 10 10   
 6 1 11 9
 7  1 9  9   
 8 1 11 11  
 9 1 10 10  
 10 1 10 7  
 11 1 12 12  
 12 1 10 9
 13 1 8  8  
 14 1 11  9 
 15 1 6  4   
 16 1  9 7  
 17 1 14 14  
 18 1 12 7
 19 1 11 9  
 20 1 13 8  
 21 1 14 5   
 22 1 10 10 
 23 1 12 10  
 24 1 13 8
 25 1 10 10 
 26 1 14 3  
 27 1 13 13  
 28 1 4 3   
 29 1  8  8  
 30 1 13 5
 31 1 12 12 
 32 2 10 1  
 33 2  3  1  
 34 2 13 1  
 35 2 12  0  
 36 2 14 4
 37 2  9  2 
 38 2 13 2  
 39 2 16  1  
 40 2 11 0  
 41 2  4  0  
 42 2 1  0
 43 2 12 0  
 44 3  8 0  
 45 3 11  1  
 46 3 14 0  
 47 3 14 1   
 48 3 11 0
 49 4  3 0   
 50 4 13 0  
 51 4 9   2  
 52 4 17 2  
 53 4 15 0   
 54 4 2 0
 55 4 14 1  
 56 4 8  0  
 57 4 6  0   
 58 4 17 0
;
proc logistic; 
   model y/n = z2 z3 z4 / scale=none;

proc nlmixed  qpoints=30;
  eta = alpha + beta2*z2 + beta3*z3 + beta4*z4 + u ; 
  p = exp(eta)/(1 + exp(eta));
  model y ~ binomial(n,p) ;
  random u ~ normal(0, sigma*sigma) subject=litter; 
run;
