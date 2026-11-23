# Install required packages
if(!require(GGally)) install.packages("GGally")
if(!require(ggplot2)) install.packages("ggplot2")
if(!require(rgl)) install.packages("rgl")

# Load libraries
library(GGally)
library(ggplot2)
library(rgl)

# 1. Pair Plots using GGally
data(iris)

ggpairs(iris, aes(color = Species, alpha = 0.6),
        title = "Multivariate Pair Plot of Iris Dataset")

# 2. Non-linear Curve Fitting using ggplot2
set.seed(42)

x <- seq(0, 10, length.out = 100)
y <- sin(x) + rnorm(100, sd = 0.2)

df <- data.frame(x = x, y = y)

ggplot(df, aes(x = x, y = y)) +
  geom_point(color = "darkblue", alpha = 0.7) +
  geom_smooth(method = "gam",
              formula = y ~ s(x, bs = "cs"),
              color = "red", se = TRUE) +
  labs(title = "Non-Linear Curve Fitting (GAM)",
       x = "X variable",
       y = "Y variable") +
  theme_bw()

# 3. 3D Scatter Plot using rgl
plot3d(x = iris$Sepal.Length,
       y = iris$Sepal.Width,
       z = iris$Petal.Length,
       col = as.numeric(iris$Species),
       size = 5,
       type = 's',
       xlab = "Sepal Length",
       ylab = "Sepal Width",
       zlab = "Petal Length")