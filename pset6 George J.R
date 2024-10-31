#Name: George Johnson
#ID: 2134609
#Pset6

#load libraries 
library(readr)
library(utils)
library(readr)
library(ggplot2)
library(IRdisplay)

#Import data and view
leaders <- read_csv("C:/Users/Tommy_w7c1d3j/Desktop/School/Public Policy Stats/DSS/leaders.csv")
View(leaders)
#Q1
 # A. The Y variable will be the polity scores of the country, the variable is non binary since its a range of values.
 # B. The X Variable will be the death of the leader, the variable or binary since it is 1 if yes 0 if no.

#Q2
polideath <- mean(leaders$polityafter[leaders$died==1]) # find mean polity if dead
polialive <- mean(leaders$polityafter[leaders$died==0]) # find mean polity if alive
polideath - polialive #compute diff in means 
# On average countries that experience death of a leader have a polity score about 1.132 points higher than the countries who did not experience a leader dying.

#Q3
lm(polityafter ~ died, data = leaders)
 # The intercept represents when died is 0, so if your leader is alive the estimated polity score when there is no leader death is -1.895, y intercept.
 # Died represents the change in polity after there is a death of a leader in this case it is a increase of 1.132, slope.

#Q4
 # The equation is Polity = -1.895 + 1.132 * died

#Q5
 # Yes even (if rounded to third decimal like the coeff)

#Q6
 # All else equal on average, when a leader has died there is an increase in the polity score by 1.132 points.

#Q7
 # The average causal effect the death of a leader (treatment) has is an increase (positive relationship / direction) in polity score of points (unit of measurement , polity score is also the outcome variable) by 1.132 (size of the average treatment effect), this is assuming all other variables are remained constant which is reasonable since the change in leader can lead to changes in political policy, institutions, infrastructure, etc.

#Q8
 # A confounding variable in this context may be socioeconomic factors like GDP, education level, life expectancy, etc. this could all cause a problem in determining if the relationship between death and polity score is truly causal since they can cause bias estimates since they all effect the polity score of a country. In order to stop these confounding variables from interfering with determining the relationship we must control for said variables. 

#Q9
 # No, even though there is a negative correlation between lead paint and school performance because we are not accounting for confounding variables. There is also the fact that correlation does not mean there is causation since correlation only represents that is a relationship however does not determine if it is a cause and effect relationship or not.

#Q10
 # Confounding variables here are things such as income bracket, neighborhood, parents education level, school district, etc.