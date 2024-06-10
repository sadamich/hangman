eyes <- seq(1, 6)
probs<- rep(1/length(eyes), length(eyes))
expected_value<- round(sum(eyes*probs), 2)


n<- 500
values<- NULL
averages<- NULL

for (roll in 1:n){
 values<- c(values, sample(x = eyes, size = 1, prob = probs))
 averages <- c(averages, mean(values))
}


par(xpd = FALSE)
plot (
 x = seq(1:length(averages)),
 y = averages,
 type = "l",
 ylim = c(min(eyes), max(eyes)),
 lwd = 2,
 ylab = "Expected Value",
 xlab = "Number of Trials",
 col = "blue",
 )

abline(h = expected_value, lty = 2, col = "red")
legend("topright",
 legend = paste("Expected Value:", as.character(expected_value)),
 col = "red",
 lty = 2
 )