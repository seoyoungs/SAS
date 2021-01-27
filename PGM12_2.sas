        DATA neighbor;
        INPUT  sex $ age $ height $ count @@ ;
        CARDS ; 
        male    old     tall  1    male    old    short  3
        male    young   tall  2    male    young  short  1
        female  old     tall  1    female  old    short  2
        female  young   tall  1    female  young  short  1
        ;
        
        PROC CORRESP data=neighbor mca outc = graph observed short ;
             TABLES sex age height ;
             WEIGHT count ; 
        RUN ;

        PROC PLOT data=graph ;
             PLOT dim1*dim2='*' $ _NAME_ /haxis=-2 to 2 vaxis =-2 to 2
                                          href=0 vref=0 box
                                          hpos=46 vpos=23;
        RUN ;

