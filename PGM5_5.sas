DATA crab;
 INFILE 'C:\Users\Administrator\Desktop\crab.txt';
 INPUT color spine  width  satell  weight;
  if satell>0 then y=1; if satell=0 then y=0; 
  if color<4 then dark=0; if color = 4 then dark=1;

  /* 절편항만을 갖는 로짓모형*/
PROC GENMOD desc;
     MODEL y= /dist=bin link=logit;            
RUN;


/* 색상과 폭을 예측변수로 갖는 로짓모형 (5.13) */
PROC GENMOD desc;
     CLASS color;
     MODEL y = color width/ dist=bin link=logit type3;    
RUN;

/* 색상과 폭의 교호작용을 포함한 로짓모형 */
PROC GENMOD desc;
     CLASS color;
     MODEL y = color width color*width/ dist=bin 
                 link=logit type3;    
RUN;
