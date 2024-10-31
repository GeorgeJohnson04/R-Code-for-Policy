#George Johnson
#2134609
#PSET 5

#load libararies
library(readr)
library(utils)
library(readr)
library(ggplot2)
library(IRdisplay)
#Load and view data data
india <- read.csv("C:/Users/Tommy_w7c1d3j/Desktop/School/Public Policy Stats/DSS/india.csv")
View(india)

#Q1
#A.Fit model
fit<-lm(water ~ female , data = india)
fit
#B. The estimated Slope coefficient is 9.252
#C. The assumption for this model is that the female politicians have been randomly assigned to the villages while the treatment in this variable is the female politician that is assigned to a village.
#now the outcome variable is the number of repaired drinking water facilities in the village because of the random assignment. The estimated average treatment effect of having a female politician on the amount of new / repaired drinking water facilities is 9.252.
#Since there is a positive coefficient this indicates that; all else equal on average, when a village has a female politician there is a 9.252 increase of new or repaired water facilities compared to villages without female politicians.
#The unit of measurement here is the number of new / repaired water facilities.

#Q2
#A. H0: B1 = 0 there is no effect of having a female politician on the number of new / repaired drinking water facilities
#HA: B1 =/ 0 there is a statistically significant effect of having a female politician on the number of new / repaired drinking water facilities
#B. Use summary statistics
summary(fit)
#From the summary we are given a test statistic value of 2.344
#C. The formula for calculating a test statistic is (B1(hat) - B(hypothesis)) / SEB1(hat)
#D. Using the formula is (9.252-0)/ 3.948 = 2.34346504559
#E. The formula for calculating a 95% CI is B1(hat) + / - (1.96 * SEB1(hat))
#F. 9.252 - (1.96 * 3.948) = 1.51392 is the lowerbound and 9.252 + (1.96 * 3.948) = 16.99008 uperbound
# (1.51392 ; 16.99008)
#G. The P-Value is 0.0197, given this p value of 1.97% we can state that the chance of observing that having a female increases new / repaired water by 9.252 is 1.97% if there is actually no effect of having a female politician.
#H. The value is statistically significant at the 5% level and there are 3 ways of knowing.
#1. The first way to determine is by using the regression output, on the Pr(>|t|) there is a * next to 0.0197 which means there is significance at the 0.05 level or 5% level.
#2. The second way is that 0.0197 is a lower value than 0.05 representing significance.
#3. The third way to determine significance is using the confidence interval since the CI does not include 0 meaning it is entirely above zero you can state the effect is significant at the 5% level.
