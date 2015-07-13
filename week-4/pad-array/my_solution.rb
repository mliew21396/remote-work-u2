# U2.W4: Pad an Array

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
#two mandatory parameters: an array and an integer representing the min size for the array
#1 optional parameter: what the array should be padded with
# What is the output? (i.e. What should the code return?)
#should return an array with values upto the min size

# What are the steps needed to solve the problem?

# IF min_size is > the arrays length
#   Create empty container
#   Set Container to array
#   Set difference variable to min_size - arrays length
#   Create counter and set it to 0
#   WHILE counter < difference variable
#     Push the optional value into the container
#     Add one to the counter
#   END WHILE
# ELSIF the min_size <= array length
#   Create Counter and set it to 0
#   Create empty container
#   WHILE counter is < array length
#     Push the array value into the container
#     Add one to the counter
#   END WHILE
# END IF
# RETURN container


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  array.keep_if{ |a| a <= array.length}
  difference = min_size - array.length
  counter = 0
  while counter < difference
    array << value
    counter += 1
  end
  p array
  # self = ans_array
return array
end


def pad(array, min_size, value = nil) #non-destructive
  # ORIGINAL
  # if min_size > array.length
  #   ans_array = []
  #   ans_array = array
  #   difference = min_size - array.length
  #   counter = 0
  #   while counter < difference
  #     ans_array << value
  #     counter += 1
  #   end
  # elsif min_size <= array.length
  #   counter = 0
  #   ans_array = []
  #   while counter < array.length
  #     ans_array << array[counter]
  #     counter += 1
  #   end
  # end
  # p ans_array
  # return ans_array
  # REFACTOR
  return pad!(array.clone, min_size, value)
end


# 3. Refactored Solution
def pad(array, min_size, value = nil) #non-destructive
  return pad!(array.clone, min_size, value)
end


# 4. Reflection

This one was a tricky exercise for me. I came up with one solution, but was failing the "pad pads element beyond the length of the array" test. I checked online and with the group but am stumped. I started to refactor anyways and found a better solution that passed all the tests. It was cool seeing my method evolve as I found better ways to use ruby. I still need to lookup more info on .clone and .dup. I feel pretty good about this exercise, but would like to talk this one throw with others.