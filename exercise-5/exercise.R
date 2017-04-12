# Exercise 5: Popular Baby Names Over Time

setwd("~/desktop/m10-dataframes/exercise-5")

# Read in the female baby names csv file into a variable called `female.names`
# Make sure *not* to read the strings as factors (this might take a minute)
female.names <- read.csv('data/female_names.csv', stringsAsFactors = FALSE)

# Create a vector `year` as the year column of the dataset
year <- female.names$year

# Create a vector `name` as the name column of the datset
name <- female.names$name

# Create a vector `prop` as the proportion column of the dataset
prop <- female.names$prop

# Create a vector `names.2013` as your name vector where your year vector is 2013
names.2013 <- name[year == '2013']

# Create a vector `prop.2013` as the your prop vector where your year vecctor is 2013
prop.2013 <- prop[year == 2013]

# What was the most popular female name in 2013?
pop.name <- names.2013[prop.2013 == max(prop.2013)]

# Write a funciton `MostPopular` that takes in a value `my.year`, and returns
# a sentence stating the most popular name in that year. 
MostPopular <- function(my.year) {
  name.year <- name[year == my.year]
  prop.year <- prop[year == my.year]
  return(name.year[prop.year == max(prop.year)])
}

# What was the most popular female name in 1994
name.1994 <- MostPopular('1994')

### Bonus ###

# Write a function `HowPopular` that takes in a name and a year, and returns
# a sentence with how popular that name was in that year
HowPopular <- function(maname, mayear) {
  name.yr <- name[year == mayear]
  prop.yr <- prop[year == mayear]
  return(paste('The Name,', maname, 'is', (round(prop.yr[name.yr == maname], 4) * 100), '% popular', sep =" "))
}
# How popular was the name 'Laura' in 1995
HowPopular('Laura', '1995')
