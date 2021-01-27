   DATA tea;
   INPUT first $ second $ count @@;
   CARDS;
    milk milk 3 milk tea 1
    tea  milk 1 tea  tea 3  
    ;
   PROC FREQ; 
        WEIGHT count;
        TABLES first*second /exact;
   RUN;

