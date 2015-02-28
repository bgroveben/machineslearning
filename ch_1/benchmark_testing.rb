# Reduce Overfitting Risk by Testing the Speed of Training
# Example: Benchmark testing

# To take it a step further, you can also use unit testing frameworks like MiniTest.
# This adds computational complexity and an IPS (iterations per second) benchmark test to your test suite so that the performance doesn't degrade over time.
# For example:

it 'should not run too much slower than last time' do
  bm = Benchmark.measure do
    model.run('sentence')
  end
  bm.real.must_be < (time_to_run_last_time * 1.2)
end

# In this case, we don't want the test to run more than 20% over what it did last time.
