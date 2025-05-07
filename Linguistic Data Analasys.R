# LLT2830 Assignment - Quantitative Research in Linguistics
# Name: Dimitrios Paschalidis

# Q1: Number of Observations
cat("Please select the ELP CSV file\n")
data <- read.csv(file.choose())
nrow(data)  # Output: Number of observations

# Q2: Number and Nature of Variables
ncol(data)        # Number of variables
str(data)         

# Q3: Frequency Table for 'length'

table(data$length)                     
min(data$length, na.rm = TRUE)         
max(data$length, na.rm = TRUE)         
which.max(table(data$length))          

data[data$length == min(data$length, na.rm = TRUE), "Word"]  
data[data$length == max(data$length, na.rm = TRUE), "Word"]  


# Q4: Histogram of Reaction Time (RT)

hist(data$RT, breaks = 50, probability = TRUE,
     main = "Distribution of RT in ELP data",
     xlab = "Reaction Time (ms)")
lines(density(data$RT, na.rm = TRUE), col = "red", lwd = 2)


# Q5: Descriptive Statistics for RT

mean_RT <- mean(data$RT, na.rm = TRUE)
range_RT <- range(data$RT, na.rm = TRUE)
median_RT <- median(data$RT, na.rm = TRUE)
sd_RT <- sd(data$RT, na.rm = TRUE)
se_RT <- sd_RT / sqrt(sum(!is.na(data$RT)))

mean_RT
range_RT
median_RT
sd_RT
se_RT

# Q6: Boxplot of RT

boxplot(data$RT,
        main = "Boxplot of Reaction Times",
        ylab = "RT (ms)",
        col = "lightblue")


# Q7: Confidence Interval for RT

t.test(data$RT)

# Q9: Simple Linear Model - RT ~ Log10Freq

model <- lm(RT ~ Log10Freq, data = data)
summary(model)  # Shows intercept, slope, p-values, R-squared

