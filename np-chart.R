### NP-CHART ###

# The np-chart is used for discrete data for measuring a single defect per unit when the sample size is constant

# Considerations:

# 1. The code only accepts .csv files with just one column with numerical data corresponding to the number of defects
# 2. The column should not have a header, the code will assign "Defects" as the column header
# 3. Review you have installed the qcc package. Run the follwing code on the console: install.packages("qcc")

# Import the qcc package
library(qcc)

# Read the csv file and name it as df
df <- read.csv(file.choose(),header = FALSE)

# Assign the column name
colnames(df) <- c("Defects")

# Specify the sample size
sample_size <- as.integer(readline(prompt = "Type in the sample size n: "))

# Create the sample size column
df$Sample_size <- (rep(sample_size,length(df$Defects)))

# Creat the np-chart
np_chart <- with(df, qcc(df$Defects,df$Sample_size, type = "np",data.name = "defects"))

# Get the summary for the chart
summary(np_chart)
