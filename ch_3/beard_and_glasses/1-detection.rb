# Beard and Glasses Detection using KNN and OpenCV
# Code for this app can be found in examples/2-k-nearest-neighbors.

# Suppose that we wanted to determine with a general accuracy whether someone had facial hair and whether he was wearing glasses.
# How would we do such a thing?
# we really don't have a lot of information about the distribution of any of this data, so KNN is a good algorithm to use, along with some help from OpenCV (Open Computer Vision).
# First I'll explain what the program's class diagram looks like.
# From there, we'll delve deeper into how to convert a raw image into an avatar.
# Then we'll extract features from those avatar images.
# When we have enough features, we'll then use KNN to build a neighborhood of faces that will determine attributes of input images.
