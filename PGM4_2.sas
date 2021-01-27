	DATA crab;
		INFILE 'C:\Users\Administrator\Desktop\crab.txt';
  		INPUT color spine  width  satell  weight;   
	RUN;
	proc genmod data=crab; 
		model satell = width / dist=poi link=identity type1 pred residuals; 
	run;


	proc genmod data=crab; 
		model satell = width / dist=poi link=log type1 pred residuals; 
	run;


 
