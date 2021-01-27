DATA ideology;
     INPUT party  ideology  count @@;
     CARDS; 
     1 1 80  1 2 81  1 3 171  1 4 41  1 5 55
     0 1 30  0 2 46  0 3 148  0 4 84  0 5 99
     ;
     PROC CATMOD;
          WEIGHT count ;
          DIRECT party;
          RESPONSE ALOGITS;
          MODEL ideology = _RESPONSE_ party;
		  run;