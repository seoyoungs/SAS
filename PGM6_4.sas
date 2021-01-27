  DATA drugs ;
     INPUT a c m count @@ ;
     CARDS ;
     1 1 1 911 1 1 2 538 1 2 1 44 1 2 2 456
     2 1 1   3 2 1 2  43 2 2 1  2 2 2 2 279
     ;
 
   PROC CATMOD DATA = drugs ;
               WEIGHT count ; 
               MODEL  a*c*m = _response_ ;
               LOGLIN a c m a*c a*m c*m a*c*m;
   RUN;


   PROC CATMOD DATA = drugs ;
               WEIGHT count ; 
               MODEL  a*c*m = _response_ ;
               LOGLIN a c m a*c a*m c*m ;
   RUN;


   PROC CATMOD DATA = drugs ;
               WEIGHT count ; 
               MODEL  a*c*m = _response_ ;
               LOGLIN a c m a*m c*m ;
   RUN;


   PROC CATMOD DATA = drugs ;
               WEIGHT count ; 
               MODEL  a*c*m = _response_ ;
               LOGLIN a c m ;
   RUN;

     
