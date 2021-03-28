data school;
input money $ schools $ count@@;
cards;
l hs 9 l hg 44 l us 13 l ug 10
m hs 11 m hg 52 m us 23 m ug 22
h hs 9 h hg 41 h us 12 h ug 27
;
run;
proc freq;
 weight count;
 tables money*schools/chisq cmh1 trend;
 run;
 
