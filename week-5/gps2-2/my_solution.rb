def bakery_num(num_of_people, fav_food)
  #Release 2
  # my_list hash is showing how many ppl are fed per treat
  # starting each treat at 0 and not logging a favorite
  # my_list is the ______________
  # servings_per_dish
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0

  # Can the bakery make the favorite food.
  has_fave = false

  # Release 3

#   ["pie", "cake", "cookie"].each do |food|
#     if food == fav_food
#       set fav_food = food
#     end
#   end


#   fav_food = "cake"
  my_list.each_key do |k|
    if k == fav_food
      has_fave = true
#       fav_food = k
    end
  end

=begin

- 'my_list.each_key' is iterating through the hash by each key.
- The 'if' statement is then looking for 'k' which is the local variable for each key and determining if it matches fav_food or favorite food argument.
- Once true, it sets value for variable 'has_fave' to true and the value of 'k' to fav_food
-fav_food found to be redundant on line 25.
=end

  # Release 4
  if has_fave == false
    raise ArgumentError.new("You can't make that food")
  else
    # The 'if' statement is checking if the 'has_fave' variable is false. If so, raises an argumentError of, "You can't make that food."
  # Release 5
#     fav_food_qty = my_list.values_at(fav_food)[0]
    fav_food_qty = my_list[fav_food]
  end



#     fav_food_qty = {"pies" => 8}.values_at("pies")[0]
#     {"pies" => 8}.values_at("pies") => [8]
#     [8][0] => 8
#     fav_food_qty = 8

#     Array[index] => element
#     Hash[key] => value

#     my_list.values_at(fav_food)
    # What are the values, that match the key 'fav_food'
    # Its returning this as an array, becasue anytime you work with just the keys or just the values of a hash, it converts to an array.

#

  # Release 6
  if num_of_people % fav_food_qty == 0
      num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
  else
#     num_of_people % fav_food_qty != 0
    # The 'if' conditional is checking that the modulus of num_of_people and fav_food_qty is 0 or no remainder.
    #If so, sets num_of_food equal num_of_people divided by fav_food_qty and returns the string, "You need to make 'value of num_of_food' 'value of fav_food'"
    #Otherwise skip to release 7
  # Release 7
#    while num_of_people > 0

      # The purpose of the while loop looks at when you don't have an equal number of people and the number of pieces of treat you can evenly feed.
      #in release 8, the if statement is looking for more people than pie can feed and then setting num_of_people to how many pies can feed them with the ramainder on to cookie.
  # Release 8
      case fav_food
        when "pie"
            pie_qty = num_of_people / my_list["pie"]
            num_of_people = num_of_people % my_list["pie"]
            cake_qty = num_of_people / my_list["cake"]
            num_of_people = num_of_people % my_list["cake"]
            cookie_qty = num_of_people
            num_of_people = 0
        when "cake"
            cake_qty = num_of_people / my_list["cake"]
            num_of_people = num_of_people % my_list["cake"]
            pie_qty = num_of_people / my_list["pie"]
            num_of_people = num_of_people % my_list["pie"]
            cookie_qty = num_of_people
            num_of_people = 0
        end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
#  end
end


#-----------------------------------------------------------------------------------------------------
# Release 1: DRIVER TEST CODE
# DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working.
# These should all print true if the method is working properly (except for the last one).
#p bakery_num(24, "cake") == "You need to make 4 cake(s)."
#p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
#p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
#p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
#p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# Oh no! Something is wrong with the code here!
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)."