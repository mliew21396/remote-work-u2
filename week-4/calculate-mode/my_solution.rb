# U2.W4: Calculate the mode Pairing Challenge

# I worked on this challenge with Galen.

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? Array
# What is the output? (i.e. What should the code return?) Array of modes
# What are the steps needed to solve the problem?
# Create empty hash
# Iterate over array, assigning elements to keys in hash
#   When elements duplicate, add one to key's value
# Return max values


# array.each {|x| h[x] +=1}


# 1. Initial Solution
# def mode(array)
#   ans_array = []
# # --Create hash with format "Word" => ["word","word"]
#   hash = array.group_by{|value| value}
# # --Replace each subarray with its length: ["word",2]
#   hash = Hash[hash.map {|k, v| [k, v.length]}]
# # --Max Value of all the hash pairs
#   hash.each { |k, v| ans_array.push(k) if v == hash.values.max }
#   return ans_array
# end
# p mode(["apple", "apple", 2, 2, 3])

# 3. Refactored Solution
def mode(array)
  h = Hash.new(0)
  array.each {|x| h[x] += 1}
  h.select {|k, v| v == h.values.max}.keys
end



# 4. Reflection
The trickiest part was deciding how we wanted to iterate over the array. We first tried a group_by method but were unsure how to use it most effectively since we were getting a an array with all the values when we only cared about the number of those values. We eventually cleaned that up in the refactoring by thinking through what the method was doing. I am going to research more on the group_by method since I feel it could be more powerful. I learned about working through the keys of a hash through h[x] and assigning values to that. I feel better about manipulating hashes but need more practice. Overall it felt good finishing this quesiton.