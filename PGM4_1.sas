      DATA glm1;
      INPUT snoring disease no;
		Total = disease+no;
      CARDS;
       0  24  1355
       2  35   603
       4  21   192
       5  30   224
       ;

      PROC GENMOD data=glm1; 
           MODEL disease/total=snoring /dist=bin link=identity;
      RUN;





	DATA glm;
      INPUT snoring disease total;
      CARDS;
       0  24  1379
       2  35   638
       4  21   213
       5  30   254
       ;
      PROC GENMOD data=glm; 
           MODEL disease/total=snoring /dist=bin link=identity;
      RUN;




      PROC GENMOD data=glm; 
           MODEL disease/total=snoring /dist=bin link=logit  pred residuals;
      RUN;




      PROC GENMOD data=glm; 
           MODEL disease/total=snoring /dist=bin link=probit pred residuals;
      RUN;
