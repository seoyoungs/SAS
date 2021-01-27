        DATA driver;
        INPUT condi$ belt$ injury$ count@@;
        CARDS;
        Normal Yes None 12500   Normal Yes Minimal 604
        Normal Yes Minor 344    Normal Yes Major 38
        Normal No None 61971    Normal No Minimal 3519
        Normal No Minor 2272    Normal No Major 237
        Drinking Yes None 313   Drinking Yes Minimal 43
        Drinking Yes Minor 15   Drinking Yes Major 4
        Drinking No None 3992   Drinking No Minimal 481
        Drinking No Minor 370   Drinking No Major 66
        ;

        PROC CORRESP data=driver mca outc=graph observed short;
             TABLES condi belt injury;
             WEIGHT count;
        RUN;

        PROC PLOT data=graph;
        PLOT dim1*dim2='*'$_NAME_/href=0 vref=0 box hpos=46 vpos=23;
        RUN;

