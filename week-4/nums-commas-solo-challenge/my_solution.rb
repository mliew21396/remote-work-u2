# U2.W4: Numbers to Commas Solo Challenge

# I spent 3 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? integer
# What is the output? (i.e. What should the code return?)comma-separated integer string
# What are the steps needed to solve the problem?
# Create a variable representing the number of Commas by dividing the length by 3
#Add conditional to subtract one for lengths divisible exactly by 3
# Iterate over the integer string adding a comma from the back of the string until there are no more commas to add
# Return modified string with commas

# 1. Initial Solution
# start = Time.now
# def separate_comma(integer)
#   #Won't have to worry about floats
#   s_integer = integer.to_s
#   num_of_commas = s_integer.length / 3
#   if s_integer.length%3 == 0
#     num_of_commas -= 1
#   end
#   while num_of_commas > 0
#     s_integer.insert((num_of_commas*-3)-1,",")
#     num_of_commas -= 1
#   end
#   return s_integer
# end
# finish = Time.now
# puts separate_comma(10000000)

# puts (finish - start)*1000
#0.005 milliseconds

# 2. Refactored Solution
#In the Rubyist - CH.10 enumberables, I saw the each_slice method which seems the perfect fit here
#Since I'm starting anew, I'll do some pseudocode:
  #Grab the integer and transform to string so we can use string methods
  # Use reverse the string since each_slice starts from the front when it groups
  # Transform to an array of characters since each_slice is an enumberable and only acts on arrays
  # Split the array into miniarrays of up to 3 values
  # Use the map method to join the mini arrays together to one big array
  # Join the big array into a string separated by the comma
  # Reverse the string so it is forward

# start = Time.now
def separate_comma(integer)
  integer.to_s.reverse.chars.each_slice(3).to_a.map { |e| e.join }.join(",").reverse
end
# finish = Time.now
# p separate_comma(100000000000)
# puts (finish - start)*1000
# 0.003 milliseconds
# 3. Reflection
# This solo challenge was tricky. My initial solution was without enumberables because that was what I have been practicing the last few weeks. My first thought was to iterate backwards on the number string using insert. I worked backwards from there two yield the two other ideas: a variable to determine how many commas I need to add, and the number string I'll back acting on. The tricky part was making sure my syntax with insert was correct and I was switching between the types correctly so I could use the methods I wanted - this took some trial and error. After finishing, I realized after some tests I need to add a conditional to not add a comma when the length was evenly divisible by 3. Adding the conditional was fairly simple with a modulus.
# After passing all the tests for my initial solution, my solution seemed messy at a glance and I wanted to encorporate some of the enumberable practice from this week. Looking through the ruby docs didn't yield anything, but skimming the Enumberable section in the rubyist was gold - each_slice. I must've forgotten what I read this morning but immediately knew this was good since it split an array exactly how I wanted. Since I already did a lot of the grunt work in terms of type conversions and transformations, this second time through was faster.
# The key take aways for me, is to not be afraid to use new material sooner and to review ruby documentation as well as the books periodically so I don't forget any information. There's probably a method out there to make everything easier.