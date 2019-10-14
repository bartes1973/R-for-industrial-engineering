### PARETO CHART ###

# Considerations:

# 1. Review you have installed the qcc package. Run the follwing code on the console: install.packages("qcc")

# Import the qcc library
library(qcc)                  

# Create a vector with the number of defects per defect type
defects <- c()            

# Create a vector with the names of the defects 
names(defects) <- c()   

# Create the Pareto chart
pareto.chart(defects,
             ylab = "Frequency",
             y2lab ="Cumulative Percentage",
             main = "Pareto Chart for ...",
             cumperc = seq(0,100,by=20))
