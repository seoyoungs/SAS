
   DATA party;
   INPUT gender $ id $ count@@;
   CARDS;
    f demo 279 f indep 73 f repub 225
    m demo 165 m indep 47 m repub 191
    ;
   PROC FREQ order=data; 
        WEIGHT count;
        TABLES gender*id /chisq expected nocol norow nopercent;
   RUN;

