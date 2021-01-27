
      DATA aids;
      INPUT race $ azt $ yes no @@; 
            cases = yes + no; 
      CARDS; 
       white  y  14  93  white  n  32  81 
       black  y  11  52  black  n  12  43
       ; 
      PROC GENMOD order=data; 
           CLASS race azt; 
           MODEL yes/cases = race azt /dist=bin link=logit obstats type3; 
      RUN;

