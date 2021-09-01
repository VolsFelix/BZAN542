str(iris)
x=iris$Petal.Length
y=iris$Petal.Width
c=iris$Species
table(c)

plot(x, y, pch=as.numeric(c), xlab='Petal Length', ylab='Petal Width', main ='Iris')
legend('topleft', pch=c(1,2,3), levels(c))
xlimits=c(2.5, 5)
ylimits=c(0.75, 1.75)
for (xlimit in xlimits) {
  abline(v=xlimit)
}
for (ylimit in ylimits) {
  abline(h=ylimit)
}

library(dplyr)
#Quiz question 1
#method 1
SUB <- subset(iris,Petal.Length > 2.5 & Petal.Length <5 &Petal.Width >.75 & Petal.Width < 1.75)
nrow(SUB)

#method 2 
SUB <- filter(iris,Petal.Length > 2.5 & Petal.Length <5 &Petal.Width >.75 & Petal.Width < 1.75)


#method 3
SUB<- iris %>%
  filter(Petal.Length>2.5) %>%
  filter(Petal.Length<5) %>%
  filter(Petal.Width>.75) %>%
  filter(Petal.Width<1.75)
nrow(SUB)
