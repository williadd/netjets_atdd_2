Simple Ruby Assessment

Adapted from the Neo Ruby Koans (www.rubykoans.com)

This assessment is intended to guage the participant's basic understanding
of Ruby. It is designed as a series of failing tests which the user must
complete. These tests are implemented using Test::Unit. There is a ruby
script (run_assessment.rb) which will run all of the tests at once. 

Getting Started:

To run the whole suite of tests, 

ruby run_assessment.rb

Recommended Approach:

Run all of the tests to ensure they all fail. Go through the test files
(test_*.rb) one by one and attempt to fill in the corerct answers. Once you've
made it through all of the tests, run all of them again. Don't spend too much
time scrutinizing a single question. This assessment is only designed to get a
general sense of your basic ruby knowledge.

Test-Unit:

Test-Unit is a robust testing framework for ruby. This assessment uses only a
small portion of the functionality available through the framework.

assert expr #will evaluate an expression and determine if it is true
examples:
    assert Date.today.is_sunday?
    assert 1 == 2


assert_equal expected, actual #will compare expected and actual for equality
examples:
    assert_equal 1, 2
    assert_equal 4, add(2,2)