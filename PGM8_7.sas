DATA toxicity;                         
     INPUT con resp count@@;
     CARDS;
        0 1  15    0 2   1    0 3  281
     62.5 1  17 62.5 2   0 62.5 3  225
      125 1  22  125 2   7 125  3  283
      250 1  38  250 2  59 250  3  202
      500 1 144  500 2 132 500  3    9
       ;
      DATA first;
           SET toxicity;
           advance = resp GE 2;
      DATA second;
           SET toxicity;
           IF resp = 1 THEN DELETE;
           advance = resp EQ 3;
      PROC CATMOD DATA = first;
           WEIGHT count;
           DIRECT con;
           MODEL advance = con;
      PROC CATMOD DATA = second;
           WEIGHT count;
           DIRECT con;
           MODEL advance = con ;      
		   run;