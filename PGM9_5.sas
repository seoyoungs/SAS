DATA tennis;
INPUT win n agassi federer henman hewitt roddick; 
CARDS;
0  6  1 -1  0  0  0
0  0  1  0 -1  0  0
1  1  1  0  0 -1  0
1  1  1  0  0  0 -1
3  4  0  1 -1  0  0
9  9  0  1  0 -1  0
5  5  0  1  0  0 -1
0  2  0  0  1 -1  0
1  2  0  0  1  0 -1
3  5  0  0  0  1 -1

;
PROC GENMOD; 
MODEL win/n = agassi federer henman hewitt roddick / 
dist=bin link=logit noint covb;
RUN;;

