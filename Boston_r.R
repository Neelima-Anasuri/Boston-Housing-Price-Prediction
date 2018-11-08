# Class Assignment

install.packages("MASS")
install.packages("lmtest")
library(MASS)
Boston=Boston
library(car)

print(Boston)
#getwd(Boston)
head(Boston)
str(Boston)
#library(vif)
library(lmtest)

vif_data=lm(medv~.,data=Boston)

vif(vif_data)


#cor=cor(Boston$indus, Boston$age, Boston$crim, Boston$crim, Boston$chas, Boston$nox, 
Boston$rm, Boston$dis, Boston$rad, Boston$tax, Boston$ptratio, Boston$black, Boston$lstat)
#cor(Boston)

#model1= lm(medv~indus,medv~age, medv~crim,medv~chas,medv~nox ,medv~rm ,medv~dis ,medv~rad , medv~tax, medv~ptra+tio, medv~black, medv~lstat, data=Boston)

#model2 <- lm(medv~ age, data=Boston)
#model3 <- lm(medv~ crim, data=Boston)
#model4 <- lm(medv~ crim+indus+age+crim+chas+nox+rm+dis+rad+tax+ptratio+black+lstat, data=Boston)
model5 <- lm(medv~ crim+crim+chas+nox+rm+dis+rad+tax+ptratio+black+lstat, data=Boston)



#summary(model1)
#summary(model2)
#summary(model3)
summary(model4)
summary(model5)


library(MASS)
library(CARS)
library(sandwich)
library(lmtest)
library(VIF)
library(car)
library(DMwR)


vif_data=lm(medv~crim+crim+chas+nox+rm+dis+rad+tax+ptratio+black+lstat,data=Boston)
vif(vif_data)
