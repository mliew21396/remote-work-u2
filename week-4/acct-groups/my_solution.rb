# U2.W4: Create Accountability Groups

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# 0. Pseudocode

# Input:array of names
# Output:a list of accountability groups
# Steps:
# Create list of array names
# Split name into groups of 4
# Return Array of arrays of names

# 1. Initial Solution
names_array = ["Alexis M", "Bill L", "Christopher Z", "David C", "Deborah H", "Devesh P", "Harrison K", "Josue A", "Lily-Therese W", "Lucas R", "Madelyn K", "Mathew L", "Mok M", "Nick C", "Paul B", "Paulo P", "Wyeth J"]

# def acc_grp(grp)
#   grp_array = grp.each_slice(4).to_a
#   grp_array.each_with_index {|item, index|
#     p "Accountability Group #{index+1} is: " + item.join(", ").to_s
#   }
# end
# acc_grp(names_array)
# 2. Refactored Solution
# Removed the to_a at the end of the first method line. Seems I can keep that array as an enumerator...
def acc_grp(grp)
  grp_array = grp.each_slice(4)
  grp_array.each_with_index {|item, index|
    p "Accountability Group #{index+1} is: " + item.join(", ").to_s
  }
end
acc_grp(names_array)

# 3. Reflection
# Lucky for me, the core work for this exercise was the same as the the solo challenge - using the method each_slice effectively. By starting with an array of names, I used the method to split the inital array into groups of max four people. I then displayed the groups to the console. The hardest part here was working the array of arrays I created. I had to use a each_with_index method instead of the normal each I have been used to. Good to know this multidimensional array work. I feel good about this challenge.

