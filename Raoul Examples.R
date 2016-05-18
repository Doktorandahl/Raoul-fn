library(mice)






## Simple example
set.seed(1)
x1 <- runif(10)
x2 <- runif(10)
x1[1] <- NA
d <- data.frame(x1, x2)
rd <- raoul(d)




## Example with two factors
data(selfreport)
dat <- selfreport[, c("age", "sex", "hm", "wm", "hr", "wr", "edu")]
rs <- raoul(dat, facs = c(2, 7))


## Example with two factors
data(selfreport)
dat <- selfreport[, c("age", "sex", "hm", "wm", "hr", "wr", "edu")]
rs <- raoul(dat, facs = c(2, 7), returncat=TRUE)



## Example with one factor
data(nhanes)
nhanes$hyp <- as.factor(nhanes$hyp)
rn <- raoul(nhanes, facs = 3)

## Example with two factors
data(nhanes)
nhanes$hyp <- as.factor(nhanes$hyp)
nhanes$fubar <- as.factor(sample(c("foo", "bar", "baz"), nrow(nhanes), replace = TRUE))
nhanes$fubar[8:9] <- NA
rn <- raoul(nhanes, facs = c(3, 5))


## Example with count
data(nhanes)
rn <- raoul(nhanes, counts = 3)


## Example with count and factor
data(nhanes)
nhanes$fubar <- as.factor(sample(c("foo", "bar", "baz"), nrow(nhanes), replace = TRUE))
nhanes$fubar[8:9] <- NA
rn <- raoul(nhanes, counts = 3, facs= 5)




