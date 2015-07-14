# U2.W5: A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # create @col_num empty
  # Define array with b,i,n,g,o and randomly choose an index from that array for the first slot
  #Add a randomly choosen number through 100. Add this to the second slot of the @col_num array

# Check the called column for the number called.
  # Create a case loop for the first letter of col_num for b,i,n,g,o.
    # for a 'b', iterate though the index 0 searching for the number with the second slot of col_num array

# If the number is in the column, replace with an 'x'
  # if match, use index and replace with "x"

# Display a column to the console
  # print the associated index to the column

# Display the board to the console (prettily)
  # print the new nested arrays

# Release 1: Initial Solution

class BingoBoard
  attr_accessor :col_num
  attr_reader :bingo_board

  def initialize(board)
    @bingo_board = board
    @col_num = []
    @bingo =  %w[b, i, n, g, o]
  end
  def generate
    @col_num << @bingo[rand(4)+1]
    @col_num << rand(99)+1
  end
  def check
    case @col_num[0]
    when "b"
      @bingo_board.each{ |item|
        if @col_num[1] == item[0]
          item[0] = 'x'
        end
      }
    when "i"
      @bingo_board.each{ |item|
        if @col_num[1] == item[1]
          item[0] = 'x'
        end
      }
    when "n"
      @bingo_board.each{ |item|
        if @col_num[1] == item[2]
          item[0] = 'x'
        end
      }
    when "g"
      @bingo_board.each{ |item|
        if @col_num[1] == item[3]
          item[0] = 'x'
        end
      }
    when "o"
      @bingo_board.each{ |item|
        if @col_num[1] == item[4]
          item[0] = 'x'
        end
      }
    else
      puts "No match!"
    end
  end
  #Optional Exercise
  def real_board
    real_board = []
    5.times {
      range = [0,14]
      sub_array = []
      for i in 0..4
        sub_array << (rand(range[0]..range[1])+1).to_s
        range = range.map{ |e| e+15  }
      end
      if real_board.length == 2
          sub_array[2] = "free space"
      end
      real_board << sub_array
    }
    p real_board
  end
end

# Release 3: Refactored Solution



# Release 2: DRIVER TESTS GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

#1) BingoBoard shows
new_game4 = BingoBoard.new(board)
p "1) Unchanged array displays below: "
p new_game4.bingo_board
#2) Check method does not affect wrong column
new_game3 = BingoBoard.new(board)
new_game3.col_num = ["b",31]
p "2) Check method does not affect wrong columns: " + (new_game3.check == board).to_s
#3) Checking check for x replacement
new_game2 = BingoBoard.new(board)
new_game2.col_num = ["b",47]
p "3) Check method replaces correctly with 'x': " + (new_game2.check == [['x', 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]).to_s
#4) Checking generate for number and letter
new_game = BingoBoard.new(board)
new_game.generate
p "4) Generate method has: "+ "Letter?: " + new_game.col_num[0].is_a?(String).to_s + " Integer?: " + new_game.col_num[1].is_a?(Integer).to_s
#5) Test real_bingo
p "Real bingo board appears below: "
real_bingo = BingoBoard.new(board)
real_bingo.real_board
# Release 4: Reflection


