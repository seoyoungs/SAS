DATA ex1;
   INPUT Z X Y count @@;
   CARDS;
    1 1 1 53  1 1 2 414  
	1 2 1  11  1 2 2  37  
	2 1 1 0  2 1 2 16  
	2 2 1 4  2 2 2 139 
    ;
   PROC FREQ;
        WEIGHT count;
		BY Z;
        TABLES X*Y /measures cmh1;
   RUN;
   PROC FREQ;
        WEIGHT count;
        TABLES Z*X*Y /cmh;
   RUN;




DATA ex2;
   INPUT center smoke cancer count @@;
   CARDS;
    1 1 1 126  1 1 2 100  1 2 1  35  1 2 2  61  2 1 1 908  2 1 2 688  2 2 1 497  2 2 2 807 
    3 1 1 913  3 1 2 747  3 2 1 336  3 2 2 598  4 1 1 235  4 1 2 172  4 2 1  58  4 2 2 121 
    5 1 1 402  5 1 2 308  5 2 1 121  5 2 2 215  6 1 1 182  6 1 2 156  6 2 1  72  6 2 2  98 
    7 1 1  60  7 1 2  99  7 2 1  11  7 2 2  43  8 1 1 104  8 1 2  89  8 2 1  21  8 2 2  36
    ;
   PROC FREQ;
        WEIGHT count;
        TABLES center*smoke*cancer /cmh;
   RUN;





   DATA ex;
   INPUT race x y count @@;
   CARDS;
    1 1 1 19  1 1 2 132  1 2 1  11  1 2 2  52  2 1 1 0  2 1 2 9  2 2 1 6  2 2 2 97 
    ;
   PROC FREQ;
        WEIGHT count;
        TABLES race*x*y /cmh;
   RUN;

