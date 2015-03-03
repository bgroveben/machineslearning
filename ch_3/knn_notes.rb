# K-Nearest Neighbors classification is an instance-based supervised learning method that works well with distance-sensitive data.
# It suffers from the curse of dimensionality and other problems with distance-based algorithms as we'll discuss.
# Developed as a means of finding classifications among distributions that are unknown.

# Three primary options for choosing K (pp25):
# - Guessing (Yeah, for real)
# - Using a heuristic
# - Optimizing using an algorithm

# Heuristics for choosing K (pp26):
# - Avoid an even K when there are only two classes to classify.
# - Choose a K that is greater than or equal to the number of classes plus one.
# - Choose a K that is low enough to avoid noise.

# Measuring distances in KNN algorithm (pp29 'What Makes a Neighbor "Near"?'):
# - Euclidean distance (most common; represents shortest path between two points)
# - Taxicab distance
# - Minkowski distance (generalization of Euclidean and Taxicab distances)
# - Mahalanobis distance (pp31; for data that is not symmetric)
#   - similar to Euclidean distance, but it considers the given standard deviation of the dimensions.

# Determining Classes (pp32):
# As the number of attributes that you are modeling increases, the number of classes also increases exponentially.
#  - 2 attributes yields 3 classes, 3 attributes yields 7 classes, 4 attributes yields 15 classes, and so on.
#  - The amount of classes will be 2**n-1 where n is the number of attributes.

# The Curse of Dimensionality (pp34):
# Simply put, highly dimensional data tends to be sparse and far apart.
