#George Johnson
#2134609
#Pset 5

#load libararies
library(readr)
library(utils)
library(readr)
library(ggplot2)
library(IRdisplay)

#Load and view data data
grades <- read.csv("C:/Users/Tommy_w7c1d3j/Desktop/School/Public Policy Stats/DSS/grades.csv")
View(grades)
#Q1
# Midterm is the x variable
#Q2 
# Overall is the y variable
#Q3
#  Both x and y variables midterm and overall scores are quantitative variables, and are measured on a scale of 0- 100 points (continuous) 
#Q4
# Make scatter plot
ggplot(grades, aes(x = midterm, y = overall)) +
  geom_point(color = "blue", alpha = 0.7) +  # Midterm scores and dot color
  labs(x = "Midterm Scores", y = "Overall Scores") + #lable the axis
  ggtitle("Relationship between Midterm Scores and Overall Scores") #make title
#Q5
#  There appears to be a positive linear relationship.
#Q6
#  Yes the relationship between midterm score overall score does appear to be causal because higher scores on midterm show higher overall scores
#Q7
#  To find the line of best fit the method that will be used is OLS (operation least squares) which minimizes the sum of squared residuals
#Q8
bestfit <- lm(overall ~ midterm, data = grades) #create best fit line
summary(bestfit) #gives summary stats and allows equation to be formed
#Q9
# The equation is overall = a + Bmidterm * midterm
# overall = 29.98344 + 0.65650 * midterm
#Q10
#coeff from model
intercept <- 29.98344
beta_midterm <- 0.65650
  #a.
   score_mid <- 75 #given score
   pred_overall <- intercept + beta_midterm * score_mid #uses OLS function to predict
   pred_overall #shows predicted overall
  # The predicted overall is an 79.22094 points out of 100 points.
  #b
   bonus <- 8 #given bonus points
   new_pred <- beta_midterm * bonus
   new_pred
  # When 8 bonus points are recieved we can see that the change in overall score is an increase of 5.252 points
#Q11
  #make vars observed scores from best fit and real obs
   predicted_overall <- predict(bestfit) #overall of OLS function
   overall <- grades$overall #overall of main set
   corr <- cor(overall, predicted_overall) #calculate correlation
   Rsqr <- corr^2 #find r squared
   Rsqr #prints r squared
 # The r squared value of  0.7217393 allows us to conclude that about 72% of the data is explained by the model or in other words the model is able to account for the varation if overall scores suggesting the model is a good fit
