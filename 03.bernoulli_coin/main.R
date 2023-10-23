library(rstan)

# data definition
N = 20
x = c(rep(1,15), rep(0,5))
h = sample(x, 20, F)
dat = list(N = N, h  = h)

# model estimation
iter = 2000
m = stan(file = 'E:/teaching/BayesCog_UKE/BayesCog_Part1/03.bernoulli_coin/coin.stan',
         data = dat,
         chains  = 4,
         iter = iter,
         warmup = iter/2,
         init = 'random')


# result
# print(m)



