
# RELEASE 0

# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# p hash[:outer][:inner]["almost"][3]



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 1

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map!{|x|
  if x.kind_of?(Array)
    x.map!{|y|
      y+=5
      }
  else
      x+=5
  end
  }
# p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! {|x|

  if x.kind_of?(Array)
    x.map!{|y|

#       p "#{y} this is y!"
      if y.kind_of?(Array)
        y.map! {|z|
          z += "ly"
          }
      else
        y += "ly"

      end
      }
  else
    x += "ly"
#     p "#{x} this is x!"
  end
  }

p startup_names




