# 1. Look at the murders data set by using library(dslabs) data(murders).
library(dslabs) #this library has a bunch of datasets, including murders
data(murders) # to set the dataset
View(murders) # viewing the murders datasets

# 2. Calculate the murder rate using total / population * 100,000
murder_rate = (murders$total / murders$population) *100000
print(murder_rate)

# 3. Check if the murder_rate is less than 0.71
for (loc in murder_rate) {
  if (loc < 0.71) {
    print("The murder rate is less than 0.71")
  } else {
    print("The murder rate is not less than 0.71")
  }
}

# 4. Define a function to check the average value of the total. CANNOT use mean().
avg_total = function(x)
{
  s= sum(murders$total)
  n= length(murders$total)
  s/n
}

avg_total(x)

# 5. Write an if-else statement to check if the first value of abb is AK. If so return "YES", if not, return "NOT AK".
if (murders$abb[1] == "AK" )
{
  print("Yes")
}else {
  print ("No")
}

# 6. Write a for-loop statement to display all abb value. Tips: check the length of abb at first and then use the length to define the i in for loop.
length(murders$abb)
count = 0

for (n in murders$abb) {
  if (count<= 51){
    print(n)
  } else { count= count+ 1}
}
