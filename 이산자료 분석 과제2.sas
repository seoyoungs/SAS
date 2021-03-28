data cmh;
input hospital group sorf count @@;
cards;
1 1 1 6    1 1 2 4    1 2 1 2    1 2 2 8
2 1 1 4    2 1 2 3    2 2 1 1    2 2 2 5
3 1 1 5    3 1 2 3    3 2 1 3    3 2 2 6
;
proc freq;
weight count;
tables hospital* group*sorf/cmh;
 
