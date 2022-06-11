# Importing Dataset
flipkart <- read.csv("C:/Users/sumi/Desktop/ppt/assignment_1 pt.csv", stringsAsFactors = FALSE)

# Viewing Dataset
View(flipkart)

# Datatypes Check
str(flipkart)

# Datatype Conversion
flipkart$cost <- as.factor(flipkart$cost)
flipkart$rating <- as.factor(flipkart$rating)
flipkart$exchangevalue <- as.factor(flipkart$exchangevalue)
flipkart$discount <- as.factor(flipkart$discount)

# Datatypes Recheck
str(flipkart)

# Express Table for people survived
prop.table(table(flipkart$survived))

# Importing Library
library(ggplot2)


# People Survival Count Bar graph
ggplot(flipkart, aes(x = cost)) + theme_classic() + 
  geom_bar() + 
  labs(y = "mobile cost", title = "flipkart cost Count")


# Gender wise survival Plot
ggplot(flipkart, aes(x = rating, fill = cost)) + theme_light() + 
  geom_bar() + 
  labs(y = "mobile ratingt", 
       title = "flipkart rating by mobile")


# Plot for survival based on class
ggplot(flipkart, aes(x = exchangevalue, fill = cost)) + theme_light() + 
  geom_bar() + 
  labs(y = "mobile count", 
       title = "flipkart exchangevalue by cost")




# Pie chart for survival ratio in each class
ggplot(flipkart, aes(x = "discount", fill = cost)) + 
  geom_bar(position = "fill") + 
  facet_grid(~discount) + coord_polar(theta = "y")

