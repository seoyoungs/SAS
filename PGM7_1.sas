    DATA sex ;
       INPUT premar birth count @@;
       assoc = premar * birth ;
       CARDS ;
       1 1  81 1 2 68 1 3  60 1 4  38
       2 1  24 2 2 26 2 3  29 2 4  14
       3 1  18 3 2 41 3 3  74 3 4  42
       4 1  36 4 2 57 4 3 161 4 4 157 
       ;
       PROC GENMOD ;
              CLASS premar birth ;
              MODEL count=premar birth / dist=poisson link=log obstats residual ;
       RUN;
