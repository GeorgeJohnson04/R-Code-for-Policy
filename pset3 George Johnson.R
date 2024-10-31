#Name: George Johnson
#ID: 2134609

#load libararies
library(readr)
library(utils)

#Import data
india <- read_csv("C:/Users/Tommy_w7c1d3j/Desktop/School/Public Policy Stats/DSS/india.csv")
View(india) # Show Data

#Q1
  #We can use the difference of means in new / repaired water facilities implmented by women compared to men to estimate the average causal effect of having a women politician and the number of new / repaired drinking water facilities.

Q2
mean(india$water[india$female == '1']) #Average of water systems if women leader
#The average amount of new / repaired water facilities if there is a female politician is 24

#Q3
mean(india$water[india$female == '0']) #Average of water systems if male leader
#The average amount of new / repaired water facilities if there is a male politician is 15

#Q4
mean(india$water[india$female == '1']) - mean(india$water[india$female == '0']) #Estimates if a woman politician and new water facility is causal by doing outcome if woman pol - outcome of male pol
#Since mean of female - mean of male is positive 9 average causal effect can be assumed to be 9, assumption is reasonable due to the value being realtively higher than 0.

#Q5
irri_vector <- india$irrigation
irri_freq <- india$irrigation
table(irri_freq)
#^ make a frequency table for irrigation and print it
sum(irri_freq == 0) #How many villages didn't get new / repaired irrigation facilities

#Q6
prop.table(table(india$irrigation  == 0))
#34.5% of villages were given a new or repaired irrigation system while 65.5% were not

#Q7
india$any.irrigation <- ifelse(india$irrigation > 0, 1, 0) # New binary variable showing 0 if there is no improvment 1 if there is

#Q8
mean(india$any.irrigation) #Shows proportion of new irrigation facilties
#34.5% of villages have new / repaired irrigation facilities

#Q9
median(india$water) #median water
#The median of the villages with new / repaired water facilities is 9
sd(india$water) #standard deviation water
#The standard deviation of new / repaired water facilities is 33.68
var(india$water) #variance water
#The variance of new / repaired water facilities is 1134.27

#Q10
sqrt(var(india$water))
#The relationship between SD and variance is that SD is the square root of variance, this is true when using the previous answer of water variance square rooted is equla to 33.68 and the SD command also gave a answer of 33.68