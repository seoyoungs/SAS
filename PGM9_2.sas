        DATA coffee ;
        INPUT first  second  symm  count @@ ;
        CARDS ;
        1 1 1 93   1 2 2 17   1 3  3  44   1 4  4   7  1 5  5  10
        2 1 2  9   2 2 6 46   2 3  7  11   2 4  8   0  2 5  9   9
        3 1 3 17   3 2 7 11   3 3 10 155   3 4 11   9  3 5 12  12
        4 1 4  6   4 2 8  4   4 3 11   9   4 4 13  15  4 5 14   2
        5 1 5 10   5 2 9  4   5 3 12  12   5 4 14   2  5 5 15  27
        ;
        PROC GENMOD ;
               CLASS symm ;
               MODEL  count = symm / dist=poisson link=log obstats residuals ;
        RUN ;

