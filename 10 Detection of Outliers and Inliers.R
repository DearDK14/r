# Load dataset
data(mtcars)

# Select numerical variable
x <- mtcars$mpg

# Calculate quartiles and IQR
Q1 <- quantile(x, 0.25)
Q3 <- quantile(x, 0.75)
IQR_value <- IQR(x)

# Calculate outlier limits
lower_limit <- Q1 - 1.5 * IQR_value
upper_limit <- Q3 + 1.5 * IQR_value

# Display limits
print(Q1)
print(Q3)
print(IQR_value)
print(lower_limit)
print(upper_limit)

# Identify outliers
outliers <- x[x < lower_limit | x > upper_limit]
print(outliers)

# Display observation numbers
print(which(x < lower_limit | x > upper_limit))

# Identify inliers
inliers <- x[x >= lower_limit & x <= upper_limit]
print(inliers)

# Visualize using boxplot
boxplot(x,
        main = "Boxplot for Detecting Outliers",
        ylab = "Miles per Gallon (mpg)",
        col = "lightblue")