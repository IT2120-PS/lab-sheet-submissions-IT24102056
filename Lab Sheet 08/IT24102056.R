setwd("C:\\Users\\IT24102056\\Desktop\\IT24102056")

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

#Exercise
#1
#Calculate the population mean
popmn <- mean(Weight.kg.)
popmn

#population standard deviation
popsd <- sd(Weight.kg.)
popsd


#2
#Draw 25 random samples of size 6 (with replacement)
samples <- c()
n <- c()

for(i in 1:25){
  s <- sample(Weight.kg.,6,replace = TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste('s',i))
}

colnames(samples) = n

#sample mean
s.means <- apply(samples,2,mean)
s.means

# sample standard deviation
s.sds <- apply(samples,2,sd)
s.sds



#3
#Calculate the mean and standard deviation of the 25 sample means
samplemean <- mean(s.means)
samplemean

samplesds <- sd(s.means)
samplesds

#Compare the population mean and mean of sample means
popmn
samplemean

#compare the population standard deviation and standard deviation of sample means
truesd = popsd /sqrt(6)
truesd
samplesds
