  DATA mental;                        
               INPUT mental ses life@@;
               CARDS;
               4 1 1 4 1 9 4 1 4 4 1 3 4 0 2
               4 1 0 4 0 1 4 1 3 4 1 3 4 1 7 
               4 0 1 4 0 2 3 1 5 3 0 6 3 1 3
               3 0 1 3 1 8 3 1 2 3 0 5 3 1 5
               3 1 9 3 0 3 3 1 3 3 1 1 2 0 0
               2 1 4 2 0 3 2 0 9 2 1 6 2 0 4
               2 0 3 1 1 8 1 1 2 1 1 7 1 0 5
               1 0 4 1 0 4 1 1 8 1 0 8 1 0 9
               ;
               PROC LOGISTIC;
                    MODEL mental = life ses ;
                    OUTPUT OUT = probs PRED = p;
               PROC PRINT DATA = probs(obs=10);
               RUN;