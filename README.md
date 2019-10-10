# R for Industrial Engineering

### X-BAR & R-CHARTS ###

# The x-bar and the R-charts are used for continuous data where the sample size (n) is 1 < n <= 10

# Considerations:

# 1. The code only accepts .csv files with just one column with numerical data corresponding to the mesurement
# 2. The column should not have a header, the code will assign "Measurement" as the column header
# 3. Review you have installed the qcc package. Run the follwing code on the console: install.packages("qcc")

# Import the qcc library
library(qcc)

# Read the csv file and name it as df
df <- read.csv(file.choose(),header = FALSE)

# Assign the column name
colnames(df) <- c("Measurement")

# Let the user know how many data points are in the data frame
print(paste("The total number of measurements in the dataset is: ",length(df[,1])))

# Specify the sample size
sample_size <- as.integer(readline(prompt = "Type in the sample size n (must divide the total number of data points and be 1 < n <= 10): "))

# Validate the sample size (must divide the total number of data points and be greater than 1 and less or euqal than 10)
while((length(df[,1])%%sample_size != 0) | (sample_size > 10) | (sample_size < 2)){
  sample_size <- as.integer(readline(prompt = paste("Error! Type in an integer number greater than 1 and less than 11 that divides",length(df[,1]),": ")))
}

# Specify the total number of samples
number_of_samples <- length(df[,1])/sample_size

# Assign the data points to the corresponding sample
Sample <- rep(1:number_of_samples,each=sample_size)

# Add the new column to the existing data frame
df <- data.frame(df,Sample)

# Group de data points
measure <- with(df, qcc.groups(Measurement,Sample))

# View the grouped data
head(measure)

# Specify the measure unit
measure_unit <- readline(prompt = "Type in the measure unit: ")  

# Create the x-bar chart
xbar <- qcc(measure, type = "xbar", data.name = measure_unit)

# Specify the warning limits (2 sigmas)
(warn.limits = limits.xbar(xbar$center, xbar$std.dev, xbar$sizes,2))

# Plot the x-bar chart
plot(xbar, restore.par = FALSE)

# Plot the warning limit lines
abline(h = warn.limits, lty = 2, col = "red")

# Create the R-chart
r_chart <- qcc(measure, type = "R", data.name = measure_unit)

# Get both charts summaries
summary(xbar)
summary(r_chart)

# Specify the lower control limit
LSL <- as.numeric(as.character(readline(prompt = "Type in the lower specification limit: ")))

# Specify the upper control limit
USL <- as.numeric(as.character(readline(prompt = "Type in the upper specification limit: ")))

# Specify the target
Target <- as.numeric(as.character(readline(prompt = "Type in the desired target: ")))

# Plot the process capability chart
process.capability(xbar, spec.limits = c(LSL,USL), target = Target)

