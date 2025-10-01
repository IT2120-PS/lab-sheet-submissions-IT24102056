setwd("C:\\Users\\user\\Desktop\\IT24102056")
getwd()

#Generate a random sample of size 25 for the baking time.
baking_time <- rnorm(25, mean = 45, sd = 2)
baking_time

#Test whether the average baking time is less than 46 minutes at a 5% level of
#significance.
t.test(baking_time, mu = 46, alternative = "less")

res <- t.test(baking_time, mu = 46, alternative = "less")
res$statistic   
res$p.value     
res$conf.int  
