data ideology;
input party ideology count @@;
cards;
1 1 80   1 2 81   1 3 171   1 4 41   1 5 55
0 1 30   0 2 46   0 3 148   0 4 84   0 5 99
;
proc logistic data=ideology;
   weight count;
   model ideology = party;
run;

