
      DATA smoking;
      INPUT smoking yes no @@; 
            cases = yes + no; 
      CARDS; 
       0  90  346  7.5  57  91 
       19.5  65  48  30  40  18
       ; 
      PROC GENMOD order=data; 
           MODEL yes/cases = smoking /dist=bin link=logit obstats type3; 
      RUN;

