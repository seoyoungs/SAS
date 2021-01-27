data life;
input race gender belief $ count @@;
cards;
1 1 Y 371 1 1 U 49 1 1 N 74
1 0 Y 250 1 0 U 45 1 0 N 71
0 1 Y  64 0 1 U  9 0 1 N 15
0 0 Y  25 0 0 U  5 0 0 N 13
;
proc catmod order=data;
   direct race gender;
   weight count;
   response logits;
   model belief = race gender/pred=prob;
run;
