# U2.W4: Research Methods

# I spent 2 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
# My personal trys
# def my_array_finding_method(source, thing_to_find)
#   source.select { |e|
#     if e.to_s.include?thing_to_find
#       e
#     end
#   }
# end

# def my_hash_finding_method(source, thing_to_find)
#   source.select { |k,v|
#     if v == thing_to_find
#       k
#     end
#   }
# end

def my_array_finding_method(source, thing_to_find)

  new_array = []
  source.each do |word|
    word.to_s.length.times do |letter|
        if word[letter] == thing_to_find
            new_array.push(word)
        end
    end

  end
    return new_array
end

def my_hash_finding_method(source, thing_to_find)
   new_array = []
   source.each do |key, value|
    if value == thing_to_find
      new_array.push(key)
    end
   end
   return new_array
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
# My personal tries
# def my_array_modification_method!(source, thing_to_modify)
#   source.map!{ |e|
#     if e.is_a?Integer
#       e + 1
#     else
#       e
#     end
#   }
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.map!{ |k,v|
#     v + thing_to_modify
#   }
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#
def my_array_modification_method!(source, thing_to_modify)
  source.map! {|e| if e.is_a? Numeric then e += thing_to_modify else e end}
end

def my_hash_modification_method!(source, thing_to_modify)
  source.merge!(source) {|k, v| v + thing_to_modify}
end

# Person 3
# My personal try
# def my_array_sorting_method(source)
#   source.sort { |a, b|
#     a.to_s <=> b.to_s
#   }
# end

# def my_hash_sorting_method(source)
#    source.sort { |a, b| a[1] <=> b[1] }
# end
def my_array_sorting_method(source)
  source.sort_by { |item| item.to_s }
end

def my_hash_sorting_method(source)
  source.sort_by { |key, value| [value, key]}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.reject!{ |e|
    if e.to_s.include?(thing_to_delete)
      e
    end  }
end
# puts my_array_deletion_method!(["kdk",1,"kd","sdf"],"1")
#The my_array_deletion_method! is a destructive method that takes two arguments. This method takes the first parameter array deletes any index from the array that contains the letter specified in the second argument. For example, calling the method using the following code deletes any word in the array i_want_pets that contains the letter "a":
#i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
#my_array_deletion_method!(i_want_pets, "a")
def my_hash_deletion_method!(source, thing_to_delete)
  source.reject!{ |k,v|
    if k.to_s.include?(thing_to_delete)
      k
    end  }
end
# The my_hash_deletion_method! is a destructive method that also takes two parameters. The method takes the first parameter hash and deletes a key-value paire if the key matches a string specified in the second parameter. Another example for this method is deletes the key-value pair for the key "George" from the hash:
# my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}
# my_hash_deletion_method!(my_family_pets_ages, "George")

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source.group_by {|x| x.is_a?Integer}.values.sort { |a, b| b.to_s <=> a.to_s }
end

def my_hash_splitting_method(source, age)
  source.group_by {|k,v| v <=4}.values.sort { |a, b| b.to_s <=> a.to_s }
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# It was nice doing a google hangout with everyone. In terms of covering material, we were able to comment on each other's code and give suggestions/feedback on how we think or would have done it. The ruby docs were much more helpful than the rubyist. I learned about the paritition method - lot better than the group_by method I was trying to use. I feel good about this challenge. I just need to get use to all the different methods available.
#
#
#
