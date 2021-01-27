DATA crab;
  INFILE 'C:\Users\Administrator\Desktop\crab.txt';
  INPUT color spine  width  satell  weight;
   IF satell>0 THEN y=1; 
   IF satell=0 THEN y=0; 

PROC LOGISTIC descending; 
     MODEL y=width/covb;                      
RUN;





















PROC GENMOD descending; 
     MODEL y=width/dist=bin link=logit covb type3 obstats;                      
RUN;
 
