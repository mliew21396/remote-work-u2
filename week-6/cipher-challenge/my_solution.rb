# U2.W6: Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message) # method define w parm
#   #convert to lower case and split into array of characters
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   #initialize return array with translated text
#   decoded_sentence = []
#   # set up decoder hash /answer key
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
#   #iterate through input array
#   input.each do |x| # What is #each doing here?
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? for the catch-all case
#     cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? letter match found
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? # convert spy-filler back to space
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? anything not mentioned above
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? final sentence
# end

# Your Refactored Solution
# def dr_evils_cipher(coded_message) # method define w parm
#   #convert to lower case and split into array of characters
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   #initialize return array with translated text
#   decoded_sentence = []
#   code_shift = 4
#   cipher_array =  %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

#   input.each do |codechar|
#     if (0..9).to_a.include?(codechar) # NUMBERS FIRST
#       decoded_sentence << codechar
#     elsif                             # next specials
#       "@#$%^&*".index(codechar) != nil
#       decoded_sentence << " "

#   #letters only
#     #input.each {|y|
#     elsif cipher_array.index(codechar) !=nil
#       newy = cipher_array.index(codechar) - code_shift
#         if newy <0 then newy += 26 end
#         decoded_sentence <<cipher_array[newy]
#         #returns new letter
#          #}
#     else
#       decoded_sentence << codechar
#     end
#              end
#     return decoded_sentence.join("")
# end

#Making this CLassy!
class Dr_evils_cipher
  def initialize(coded_message)
    @input = coded_message.downcase.split("")
    @decoded_sentence = []
    @pushchar = ""
  end # end init

  def decode
    @input.each do |codechar|
      checkchar(codechar)
      @decoded_sentence << @pushchar
                end
      return @decoded_sentence.join("")
  end # decode

  def checkchar(char)
    return true if numchck(char)
    return true if spec (char)
    return true if letter (char)
    @pushchar = char
    return false
  end # checkchar


  def numchck(c)
    if  (0..9).to_a.include?(c) # NUMBERS FIRST
        @pushchar = c
        return true
    else
      return false
    end
  end

  def spec(c)
    if "@#$%^&*".index(c) != nil
      @pushchar = " "
      return true
    else
      return false
    end
  end

  def letter(c)
    code_shift = 4
    cipher_array =  %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    if cipher_array.index(c) !=nil
      newy = cipher_array.index(c) - code_shift
      if newy <0 then newy += 26 end
      @pushchar = cipher_array[newy]
      return true
    else
      return false
    end
  end
end

#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
#   #iterate through input array
#   input.each do |x| # What is #each doing here?
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? for the catch-all case
#     cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? letter match found
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? # convert spy-filler back to space
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? anything not mentioned above
#       decoded_sentence << x
#     end
#   end
#   return decoded_sentence
#   #What is this method returning? final sentence
# end





# Driver Test Code:
obj = Dr_evils_cipher.new("/@#$%^&*/")
p obj.decode #== "/       /"

obj2 = Dr_evils_cipher.new("m^aerx%e&gsoi!")
p obj2.decode

obj3 = Dr_evils_cipher.new("1234567890")
p obj3.decode

obj4 = Dr_evils_cipher.new("(){}!")
p obj4.decode


# obj2 = dr_evils_cipher.new("1234567890")

# p dr_evils_cipher("/@#$%^&*/") == "/       /"
# p dr_evils_cipher("1234567890") == "1234567890"
# p dr_evils_cipher("(){}!") == "(){}!"

# p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# # Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
# p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
# &fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
# p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
# p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
# @m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
# p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")



# Reflection
# Keep your reflection limited to 10-15 minutes!
