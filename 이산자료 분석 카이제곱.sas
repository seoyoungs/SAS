data medicine;
input group  answer count  @@;
cards;
1 1 105 1 2 8
2 1 12   2 2 2
3 1 18  3 2 19
4 1 47  4 2 52
5 1 0    5 2 13
;
run;
proc freq data=medicine;
WEIGHT count;
tables group*answer/chisq;
run;
