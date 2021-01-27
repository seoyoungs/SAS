            DATA  neighbor ;
            INPUT  surname $ 1-10  age $ 12-18  sex $ 19-25
                   height $ 26-30  edu $ 32-37 ;  
            CARDS ;
            park       old    male   short low
            kim        young  female tall  high
            choi        old    male   short mid
            cho        old    female tall  low
            park       old    female short mid
            kang       young  male   tall  high
            han        young  male   tall  high
            choi       old    male   short mid
            jeong      young  female short low
            sohn       old    male   tall  high
            kim        young  male   tall  high
            sim        old    female short mid
            ;

            PROC CORRESP data = neighbor  dimens = 1  observed  short ;
                 TABLES  sex age ;
            RUN ;
