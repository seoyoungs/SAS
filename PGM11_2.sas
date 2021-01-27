/* Free throw data*/
data basket;
  input player $ y n @@ ;
cards;
 yao       10 13         frye       9 10          camby     10 15            okur           9 14 
blount      4   6         mihm     9 10         ilgauskas   6 10           brown         4  4 
curry       6  11         miller     9 10         haywood   4   8           olowokandi 8   9 
mourning 7   9         wallace  5  8         ostertag     1  6
;
proc nlmixed qpoints=50;
  eta = alpha + u;  p = exp(eta)/(1 + exp(eta));
  model  y ~ binomial(n,p);
  random u ~ normal(0, sigma*sigma) subject = player out=uhat;
  predict p out=new;
run;
