data {
    int<lower=1> N; // total number of trials
    int<lower=0, upper=N> w; // number of water
} 

parameters {
    real<lower=0,upper=1> theta; // % of water
    // --> implicit uniform(0,1)
}

model {
    // define prior at the beginning
    // theta ~ uniform (0,1);
    // theta ~ beta(10, 10); give it only when you want it
    // likelihood link
    w ~ binomial (N, theta  );
}
