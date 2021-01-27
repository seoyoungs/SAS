
DATA aspirin;
INPUT group mi count @@;
CARDS;
 1 1 189  1 2 10845  
 2 1 104  2 2 10933  
;
PROC FREQ order=data; 
     WEIGHT count;
     TABLES group*mi /measures nocol nopercent;
RUN;

















DATA smoking;
INPUT group mi count @@;
CARDS;
 1 1 172  1 2 173  
 2 1 90  2 2 346  
;
PROC FREQ order=data; 
     WEIGHT count;
     TABLES mi*group /measures nocol nopercent;
RUN;
