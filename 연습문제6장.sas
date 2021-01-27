  DATA safe;
     INPUT a b c count @@;
     CARDS;
     1 1 1 14 1 1 2 1105 1 2 1 483 1 2 2 411111
     2 1 1 497 2 1 2  4624 2 2 1  1008 2 2 2 157342
     ;

     PROC GENMOD data=safe;
             CLASS a b c;
             MODEL count=a b c/dist=poisson obstats residual;
        RUN;
     PROC GENMOD data=safe;
             CLASS a b c;
             MODEL count=a b c a*b a*c/dist=poisson obstats residual;
        RUN;
     PROC GENMOD data=safe;
             CLASS a b c;
             MODEL count=a b c a*b a*c b*c/dist=poisson obstats residual;
        RUN;
     PROC GENMOD data=safe;
             CLASS a b c;
             MODEL count=a b c a*b a*c b*c a*b*c/dist=poisson obstats residual;
        RUN;
