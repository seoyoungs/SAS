DATA crab;
 INFILE 'C:\Users\Administrator\Desktop\crab.txt';
 INPUT color spine  width  satell  weight;
  if satell>0 then y=1; if satell=0 then y=0; 
  if color<4 then dark=0; if color = 4 then dark=1;

  /* �����׸��� ���� ��������*/
PROC GENMOD desc;
     MODEL y= /dist=bin link=logit;            
RUN;


/* ����� ���� ���������� ���� �������� (5.13) */
PROC GENMOD desc;
     CLASS color;
     MODEL y = color width/ dist=bin link=logit type3;    
RUN;

/* ����� ���� ��ȣ�ۿ��� ������ �������� */
PROC GENMOD desc;
     CLASS color;
     MODEL y = color width color*width/ dist=bin 
                 link=logit type3;    
RUN;
