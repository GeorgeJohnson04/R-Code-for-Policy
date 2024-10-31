# Name:George Johnson 
# ID:2134609
# PSet 4
install.packages("IRdisplay")
#Load libraries
library(utils)
library(readr)
library(ggplot2)
library(IRdisplay)
#Load data set
india <- read_csv("C:/Users/Tommy_w7c1d3j/Desktop/School/Public Policy Stats/DSS/india.csv")
View(india) #Shows observation table

#Q1
#a. Visualize data with histogram
print(ggplot(india,aes(water)) + 
  geom_histogram(binwidth =5, fill = "red", color = "black") + #Bin Colors and outline color
  labs(title = "Distribution of New or Repaired Water Facilities", x = "Water", y = "Frequency")) # X Y and Title Lables
#b. There appears to be a right skew so not normally distributed
#c. Approximately 298 villages have less than 50 new or repaired water facilities
#Work to get answer
#Villages with less than 50 water facilities
villages50 <- subset(india, water<50)
#Count how many villages there were in subset
nrow(villages50)

#Q2
#a. Visualize data with a scatter plot
print(ggplot(india, aes(x = water, y= irrigation)) + #Create scatter plot
  geom_point(color = "black") + #Color of dots 
  labs(title = "Relationship between Water & Irrigation", x = "# of Water Facilities", y= "# of Irrigation Facilities"))#X Y and Title lables
#b. The relationship seems to be a positive relationship
#c. No

#Q3
#a.work for abs of correlation
wateriricor <- cor(india$water, india$irrigation)
wateriricor
abs(wateriricor)
#b. I am not surprised by the sign since the relationship did seem positive just weak
#c. I am not surprised by the value because the correlation seems weak (closer to 0 than 1) on the graph

#Q4
#a.
#find the means and standard deviation
mean_h20 <- mean(india$water)
sd_h20 <- sd(india$water)
#find z score
z_h20 <- (india$water - mean_h20) / sd_h20
#b.
#find mean and standard deviation
mean_irri <- mean(india$irrigation)
sd_irri <- sd(india$irrigation)
#Calculate z score
z_irri <- (india$irrigation - mean_irri) / sd_irri
#c. new var that is product of the two z scores
zproduct <- z_irri * z_h20
#d. take avrg of product
mean(zproduct) 
#e. they are approximately the same and differ by about .001

#Q5 If we wanted to use the sample of the villages in this dataset to infer the characteristics of all villages in India
#, we would have to make sure that the sample is representative of the population.

#Q6 The best way to sample the villages would be a stratified random sample, so each village would be subsetted for specific data then
# random selections from each subsets of the stratum in proportion to their representation in the population.
