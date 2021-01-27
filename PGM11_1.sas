/* <표 9.1> 자료에 대한 GLMM*/
DATA approval;
	do id=1 to 4;
       INPUT survey1 survey2 count @@;output;
	end;
CARDS;
      1 1 794 1 0 150
      0 1  86 0 0 570
      ;

/* item값에 따라 반응변수 response 생성*/
 data match;
    set approval;	
     response=survey1;time=1;output;
     response=survey2;time=0;output;	

proc nlmixed data=match qpoints=50; 
   eta = alpha + beta*time+u;  
   p = exp(eta) / (1 + exp(eta));
   model response ~ binary(p);
   random u ~ normal(0,sigma*sigma) subject=id;
   replicate count;
   predict p out=new;
run;
