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
  
  
  # dataframe wit lak, rep, x, y1, y2, y3, y4
  
  
  


