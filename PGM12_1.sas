  
            DATA sex ;
            INPUT presex $  SD D A SA ;
            CARDS ;
            매우 81 68  60   38
            거의 24 26  29   14
			조금 18 41  74   42
            전혀 36 57 161 157
            ;
     
            PROC CORRESP  outc = graph short ;
                 VAR  SD D A SA;
                 ID presex ;
            RUN;
            PROC PLOT data = graph vtoh = 1.7 ;
                 PLOT dim1 * dim2 = '*' $ presex / haxis = -1.5 to 1.0 by 0.5
                                                  vaxis = -1.5 to 1.0 by 0.5
                                                  href = 0 vref=0 box
                                                  hpos = 37 vpos = 20 ;
           RUN;

