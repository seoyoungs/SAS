     DATA belief;
          INPUT gen $ belief $ count;
          CARDS;
          F Y 435
          F N 147
          M Y 375
          M N 134
          ;
          PROC FREQ order=data; 
               WEIGHT count;
               TABLE gen*belief / nopercent nocol norow expected chisq; 
          RUN;


		  PROC GENMOD DATA = belief  ORDER = data;
         		CLASS gen belief;
         		MODEL count = gen belief gen*belief/dist=poisson link=log  obstats;
    	  RUN;
    

		  PROC GENMOD DATA = belief  ORDER = data;
         		CLASS gen belief;
         		MODEL count = gen belief/dist=poisson link=log  obstats;
    	  RUN;
