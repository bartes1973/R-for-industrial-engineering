### U-CHART ###

# The u-chart is used for discrete data for measuring multiple defects per unit when the sample size is not constant

# Considerations:

# 1. The code only accepts .csv files with just two columns with numerical data (first column =  number of defects; second column = sample size)
# 2. The columns should not have a header, the code will assign "Defects" and "Sample_size" as the columns headers
# 3. Review you have installed the qcc package. Run the follwing code on the console: install.packages("qcc")

# Import the qcc library
library(qcc)

# Read the csv file and name it as df
df <- read.csv(file.choose(),header = FALSE)

# Assign the columna namea
colnames(df) <- c("Defects","Sample_size")

# Create the U-chart
u_chart <- with(df, qcc(df$Defects,df$Sample_size, type = "u", data.name = "defects"))

# Get the summary for the chart
summary(u_chart)