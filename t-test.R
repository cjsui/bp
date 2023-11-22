library(effsize)

# Creating the data for Class A and Class B
class_A_scores <- c(88, 92, 75, 89, 95, 100, 84, 76, 92, 90)
class_B_scores <- c(85, 79, 84, 80, 70, 75, 85, 86, 88, 83)

#Step1: Test normality - Shapiro-Wilk Test
shapiro_test_A <- shapiro.test(class_A_scores)
shapiro_test_B <- shapiro.test(class_B_scores)

print(shapiro_test_A)
print(shapiro_test_B)

#Step2: Performing the Independent Two-Sample T-Test
t_test_result <- t.test(class_A_scores, class_B_scores)

# Printing the results  
print(t_test_result)

#Step3: Effect Size - Calculate Cohen's d for Class A and Class B
d_value <- cohen.d(class_A_scores, class_B_scores)

# Printing the result
print(d_value)
  