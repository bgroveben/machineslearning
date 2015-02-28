# Example: Cross-validating a model

# From our trained model we might have a 5% error rate, but when we introduce data outside the model, that error rate might skyrocket to something like 15%.
# That is why it's important to use a data set that is separate; this is as essential to machine learning as double-entry bookkeeping is to accounting.
# For example:

def compare(network, text_file)
  misses = 0
  hits   = 0

  sentences.each do |sentence|
    if model.run(sentence).classification == sentence.classification
      hits += 1
    else
      misses += 1
    end
  end

  assert misses < (0.05 * (misses + hits))
end

def test_first_half
  compare(first_data_set, second_data_set)
end

def test_second_half
  compare(second_data_set, first_data_set)
end

# This method of first splitting data into two sets eliminates common issues that might happen as a result of improper parameters on your machine learning model.
