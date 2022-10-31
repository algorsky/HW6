# homework 6 for zoo 955, simulation

library(tidyverse)


Beta <- vector(length =10)


data <- data.frame(matrix(data = NA, nrow = 10, ncol = 5))


install.packages("remotes")
remotes::install_github("romunov/AED")

library(AED); data(RIKZ)
Beta <- vector(length =9)

# species richness is the number of different species
# NAP is the height of the tide? or sampling station

# x is depth and y is methane 
for (i in 1:9){
  Mi <- summary(lm(Richness∼NAP,
                   subset =(Beach==i), data=RIKZ))
  Beta[i] <- Mi$coefficients[2, 1] }



# create a dataframe for the simulation data
ch4 <- data.frame(matrix(data = NA, nrow = 10, ncol = 5))

# run one simulation where we pick the beta values
B0 = 1
B1 = 0.2

# need to include an error term


x = seq(0.5, 5, by = 0.5)
y = 
  
#dataframe wit lak, rep, x, y1, y2, y3, y4
  
  
  
#Start Jess Attempting to Understand: 
#Question: Simulate Data from a hierarchical mixed effects model
#Analyze how to allocate 50 sampling events from simulated data
#In our example: we are estimating methane in ponds: Ponds have a certain number of sampling locations within them to get a sample
#Start with just a linear model 

sim <- data.frame(matrix(data=NA, nrow = 50, ncol = 13))
colnames(sim) <- c('pond','rep','x','y1','y2','y3','y4','y5','y6','y7','y8','y9','y10')

#set regression coeffecients
B0 <- 10
B1 <- -0.2
x = seq(0.5, 5, by = 0.5) #Max depth 5m based on cutoff for pond
#Need to code in error? - this is what gives variation in simulation


#Start goal - get a GLM to work 
#Would want to get an estimate for each pond at each depth 10 times
#For loop iterating through ponds? Then get 10 estimate each for each depth
#Uncertain how to save that into the dataframe with that structure though
for i in i:10{
  
}
mod <- glm(y ~ x, family = gaussian)


#Then - would want a mixed model with either pond as a random effect
#just trying to get overall estimate of emmissions in all ponds across a depth gradient - pond could add in undesired variation (and likely would based on trophic state)
#How would you actualyl simulate differences between pond? In real life, ponds would have different baselines and potentially differnt slopes - how do you do that in an automated way?
