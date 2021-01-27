    DATA sex ;
    INPUT  premar  extramar  symm  count @@ ;
    CARDS ;
    1 1 1  144   1 2 2   2   1 3 3   0   1 4  4  0
    2 1 2   33   2 2 5   4   2 3 6   2   2 4  7  0
    3 1 3   84   3 2 6  14   3 3 8   6   3 4  9  1
    4 1 4  126   4 2 7  29   4 3 9  25   4 4 10  5
    ;
     /* Symmetry Model */
       PROC GENMOD ;
            CLASS symm ;
            MODEL  count = symm / dist=poisson link=log ;

     /* Quasi-Symmetry Model */
       PROC GENMOD ;
            CLASS premar extramar symm ;
            MODEL count = symm extramar premar / dist=poisson link=log ;

     /* Ordinal Quasi-Symmetry Model */
       PROC GENMOD ;
            CLASS symm ;
            MODEL count = symm extramar premar 
                                / dist=poisson link=log obstats residuals ;
       RUN ;
