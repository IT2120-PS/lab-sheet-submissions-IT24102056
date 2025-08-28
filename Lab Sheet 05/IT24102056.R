setwd("C:\\Users\\IT24102056\\Desktop\\IT24102056")

#Import the dataset (’Exercise – Lab 05.txt’) into R and store it in a data frame
#called ”Delivery Times”
delivery_times <- read.table("Exercise - Lab 05.txt",header = TRUE, sep = ",")

names(delivery_times) <- c("x1")
attach(delivery_times)

#Draw a histogram for deliver times using nine class intervals where the lower limit
#is 20 and upper limit is 70. Use right open intervals.
histogram <- hist(x1,main = "Histogram for delivery time",
                  breaks = seq(20,70, length = 10), right = FALSE)


breaks <- round(histogram$breaks)
freq <- histogram$counts
mid <- histogram$mids

classes <- c()
for (i in 1: length(breaks)-1){
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1],")")
}

cbind(Classes = classes, Frequency = freq)

cum.freq <- cumsum(freq)

new <- c()
for (i in 1: length(breaks)){
  if(i==1){
    new[i] = 0
  }else{
    new[i] = cum.freq[i-1]
  }
}

plot(breaks,new,type = "o",main = "Cumulative frequency poligon(ogive) ",xlab ="Delivery time",ylab = "Cumulative frequency",ylim = c(0,max(cum.freq))   )