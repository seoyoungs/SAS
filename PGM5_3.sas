
   DATA crabs;
    INPUT width cases satell@@; 
    CARDS;
     22.69 14  5   23.84 14  4   24.77 28 17   25.84 39 21
     26.79 22 15   27.74 24 20   28.67 18 15   30.41 14 14 
     ;
   PROC GENMOD; 
        MODEL satell/cases = width /dist=bin link=logit; 
   RUN;
