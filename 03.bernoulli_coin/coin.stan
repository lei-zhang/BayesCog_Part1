data {
  int<lower=0> N;
  int<lower=0> h[N];
}

parameters {
  real<lower=0, upper=1> theta;
}

model {
  h ~ bernoulli(theta);
}

