DATA crab;
 INFILE 'C:\Users\Administrator\Desktop\crab.txt';
 INPUT  color spine  width  satell  weight;
  if satell>0 then y=1; if satell=0 then y=0; 
  if color < 4 then dark=01; if color=4 then dark=1;

/* ������ ���������� ������ �������� (5.14) */
PROC GENMOD desc;
     MODEL y=color width/dist=bin link=logit type3;            
RUN;

/* ������ ���׺����� ������ �������� */
PROC GENMOD desc;
     CLASS dark;
     MODEL y=dark width/dist=bin link=logit type3;            
RUN; 
