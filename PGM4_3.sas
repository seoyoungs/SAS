     DATA crabs;
     INPUT width cases satell@@;
           log_case = log(cases);
     CARDS;
      22.69  14  14    23.84  14  20    24.77  28  67    25.84  39 105
      26.79  22  63    27.74  24  93    28.67  18  71    30.41  14  72
      ;
     PROC GENMOD; 
          MODEL satell = width / dist=poi link=log offset=log_case pred residuals; 
     RUN;
