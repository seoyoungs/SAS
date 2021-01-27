   DATA job ;
        INPUT gender $ income satisf count @@ ;
              assoc=income*satisf;
        CARDS ;
        F  1 1 1  F  1 2 3  F  1 3 11  F  1 4 2
        F  2 1 2  F  2 2 3  F  2 3 17  F  2 4 3
        F  3 1 0  F  3 2 1  F  3 3  8  F  3 4 5
        F  4 1 0  F  4 2 2  F  4 3  4  F  4 4 2
        M  1 1 1  M  1 2 1  M  1 3  2  M  1 4 1
        M  2 1 0  M  2 2 3  M  2 3  5  M  2 4 1
        M  3 1 0  M  3 2 0  M  3 3  7  M  3 4 3
        M  4 1 0  M  4 2 1  M  4 3  9  M  4 4 6
        ;

       /* Homogeneous LxL Model */

       PROC GENMOD DATA=job ;
            CLASS gender income satisf ;
            MODEL count=gender income satisf gender*income gender*satisf assoc
                        /dist=poisson link=log obstats ;
       RUN ;

