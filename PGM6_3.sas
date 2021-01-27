  DATA drugs;
     INPUT a c m count @@;
     CARDS;
     1 1 1 911 1 1 2 538 1 2 1 44 1 2 2 456
     2 1 1   3 2 1 2  43 2 2 1  2 2 2 2 279
     ;

     PROC GENMOD data=drugs;
             CLASS a c m;
             MODEL count=a c m/dist=poisson obstats residual;
        RUN;
     PROC GENMOD data=drugs;
             CLASS a c m;
             MODEL count=a c m a*m c*m/dist=poisson obstats residual;
        RUN;
     PROC GENMOD data=drugs;
             CLASS a c m;
             MODEL count=a c m a*c a*m c*m/dist=poisson obstats residual;
        RUN;
     PROC GENMOD data=drugs;
             CLASS a c m;
             MODEL count=a c m a*c a*m c*m a*c*m/dist=poisson obstats residual;
        RUN;
