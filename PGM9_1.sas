options nodate ps=60;
data approval;
  input survey1 survey2 count@@;
cards;
1 1 794 1 0 150
0 1  86 0 0 570
;
proc freq order=data;
  weight count;
  tables survey1*survey2/agree;
run;
