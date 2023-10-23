data {
    int <lower=0 > N;
    int<lower=0,upper=1> flip[N];
    //vector <lower=0,upper=1>[N] flip;
}

parameters {
    real <lower=0,upper=1> theta;
}

model {
    //for (j in 1:N) {
    //    flip[j] ~ bernoulli(theta);
    //}
    
    //-->
    flip ~ bernoulli(theta);
    // flip[1] theta
    // flip[2] 
    
    
    // --> sum(flip) ~ binomial(N, theta);
}

 
