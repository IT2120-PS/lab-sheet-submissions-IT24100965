Delivery_Times <- read.table("Exercise - Lab 05.txt",header = TRUE,sep = " ")
attach(Delivery_Times)
histogram <- hist(Delivery_Time_.minutes.,main= "deliver times",breaks=seq(20,70,length=10),right=TRUE)

breaks <- round(histogram$breaks)
freq <- histogram$counts

cum.freq <- cumsum(freq)

new <- c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}

plot(breaks,new,type = 'l', main = "Cumalative Frequency Polygon for Deliver Times",xlab = "Deliver Times",ylab = "Cumalative Frequency",ylim = c(0,max(cum.freq)))
