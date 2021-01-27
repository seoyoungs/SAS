DATA ex1;
   INPUT gender $ mi $ count@@;
   CARDS;
    w y 621 w n 239
    b y 89 b n 42
    ;
   PROC FREQ order=data; 
        WEIGHT count;
        TABLES gender*mi /measures nocol nopercent;
   RUN;


DATA ex2;
   INPUT belt $ dead $ count@@;
   CARDS;
	no d 1601 no i 162527
	yes d 510 yes i 412368
    ;
   PROC FREQ order=data; 
        WEIGHT count;
        TABLES belt*dead /measures chisq nocol nopercent;
   RUN;
