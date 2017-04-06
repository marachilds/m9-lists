# Exercise 1: Lists

# Create a vector of everything you ate for breakfast
my.breakfast <- c("banana","berries","vanilla protein","almond milk","smoothie")

# Create a vector of everything you ate for lunch
my.lunch <- c("chicken","salad","egg","tomatoes","bacon")

# Create a list "meals" that has contains your `breakfast` and `lunch`
my.meals <- list(breakfast = my.breakfast, lunch = my.lunch)

# Add a "dinner" element to your "meals" list that has what you plan to eat for dinner
my.meals$my.dinner <- c("pasta","spinach","shrimp","pesto","bread","chocolate milk")

# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner <- my.meals$my.dinner

# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason)
my.meals[[5]] <- my.meals$lunch

# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early.meals`
early.meals <- list(my.meals[1:2])

### Bonus ###
# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function
items <- lapply(my.meals, length)

# Write a function that adds pizza to every meal
AddPizza <- function(x) {
  x <- c(x, 'pizza')
}

# Add pizza to every meal!
PizzaEveryTime <- lapply(my.meals, AddPizza)
