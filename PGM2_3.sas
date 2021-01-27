
   DATA infants;
   INPUT malform alcohol count @@;
   CARDS;
    1 0   17066  1 0.5 14464  1 1.5   788  1 4.0   126  1 7.0    37
    2 0      48  2 0.5    38  2 1.5     5  2 4.0     1  2 7.0     1   
    ;
   PROC FREQ; 
        WEIGHT count;
        TABLES alcohol*malform/chisq cmh1 trend;
   RUN;

