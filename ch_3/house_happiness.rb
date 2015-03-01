# You want to buy a new house, and you want to figure out if your neighbors are happy or not.
# You take a survey and come up with the following table:

# Latitude minutes  | Longitude minutes  | Happy?
#   56                  2                   Yes
#   3                   20                  No
#   18                  1                   Yes
#   20                  14                  No
#   30                  30                  Yes
#   35                  35                  Yes

# The two houses we are interested in are at (10,10) and (40,40).
# One way to determine this is to use the nearest neighbor and determine whether they are happy.
# We will use Euclidean distance (absolute distance) to determine who is our nearest neighbor.

#!# My Ruby interpretation Euclidean distance for a two-dimensional point (for what it's worth):
#!# Math.sqrt(((x1 - x2) ** 2) + ((y1 - y2) ** 2))


# Now here comes the code in the book:

require 'matrix'

# Euclidean distance between two vectors v1 and v2
# Note that the Vector#magnitude is the same thing as the Euclidean distance from (0,0,....) to the vector point

distance = ->(v1, v2) {
  (v1 - v2).magnitude
}

house_happiness = {
  Vector[56, 2]  => 'Happy',
  Vector[3, 20]  => 'Not Happy',
  Vector[18, 1]  => 'Happy',
  Vector[20, 14] => 'Not Happy',
  Vector[30, 30] => 'Happy',
  Vector[35, 35] => 'Happy'
}

house_1 = Vector[10, 10]
house_2 = Vector[40, 40]

find_nearest = ->(house) {
  house_happiness.sort_by {|point,v|
    distance.(point, house)
  }.first
}

p find_nearest.(house_1)
p find_nearest.(house_2)
puts " "

# Based on this reasoning, you can see that the nearest neighbor for the first house is not happy, whereas the second house's neighbor is.
# What if we increased the number of neighbors we looked at?

# Using the same code from above in this as well

find_nearest_with_k = ->(house, k) {
  house_happiness.sort_by {|point,v|
    distance.(point, house)
  }.first(k)
}

p find_nearest_with_k.(house_1, 3)
p find_nearest_with_k.(house_2, 3)
puts " "

# Using more neighbors doesn't change the classification!
# This is a good thing and increases our confidence in the classification.
# This method demonstrates the K-Nearest Neighbors classification.
# More or less, we take the *nearest* neighbors and use their attributes to come up with a score.
# In this case, we wanted to see whether one house would be happier than the other, but the data can really be anything.

# KNN is an excellent algorithm because it is so simple, as you've just seen.
# It is also extremely powerful.
# It can be used to classify or regress data (see the section 'Classification and Regression' pp25).
# Classification -- Happy or Not Happy.
# Regression -- Assign a numerical value of happiness for the house.

# This chapter will cover quite a bit and is broken out into a few different concerns around using KNN.
# We will first discuss picking K, or the constant that determines your neighborhood.
# Then we'll delve more into what 'nearest' means and follow up with an example of facial classification using OpenCV.
