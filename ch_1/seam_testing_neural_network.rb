# Example: Seam testing an artificial neural network

# Let's say you would like to test a neural network.
# You know that the data that is yielded to a neural network needs to be between 0 and 1, and that in your case you want the data to sum to 1.
# When data sums to 1, that means it is modeling a percentage.
# For instance, if you have two widgets and three whirligigs, the array of data would be 2/5 widgets and 3/5 whirligigs.
# Because we want to make sure that we are feeding only information that is positive and adds up to 1, we would write the following in our test suite:

it 'needs to be between 0 and 1' do
  @weights = NeuralNetwork.weights
  @weights.each do |point|
    (0..1).must_include(point)
  end
end

it 'has data that sums up to 1' do
  @weights = NeuralNetwork.weights
  @weights.reduce(&:+).must_equal 1
end

# Seam testing serves as a good way to define interfaces between pieces of code.
