# U2.W6: Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
# Initial thoughts: there are two ways to do this, check each of the four win conditions separately or start with the first nested array's index and go through each value one by one then if 'x' is there, check below, and to the right(diagonals only ever occur twice so they can be separate; this is more expansive and works off board.length).
  #To focus on OOD, I'll try to more challenging way by going value by value.
# Create a class that receives a bingo board as a parameter
  #DEFAULT CLASS
    #Initialize class
      #@vert_var = 0
      #@board
    #Default method
      #set index_counter to 0
      #Start first loop through horizontally by index
        #If index is 0
          #run diagonal loops method
        #Run horizontal method
        #Run Vertical method
        #increment index_counter
      #put to console that there is no bingo
      #end

    #Diagonal win method
      #set counter = 0
      #loop while the counter is less than the board's length
        #Check the column(index - counter) for an x
          #if so, add one to the counter
          #if not, end
      #set counter = board's length(5) - 1
      #loop while the counter is greater than or equal to 0
        #Check the column(index - counter) for an x
          #if so, add minus one to the counter
          #if not, end

    #Horizontal method
      #Start second loop through columns by index
        #If value is 'x', check next index until index isn't greater than board length
          #return BINGO

    #Vertical method
      #if @vert_var is not set to NOPE,
        #continue
        #if board value aka [index_value][@vert_var] is equal to 'x'
          #continue
          #if @vert_var is equal to the board length minus 1
            #return "BINGO"
          #add one to @vert_var
      #else break

# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

horizontal_6 = [[47, 44, 71, 8, 88, 99],
              ['x', 'x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57, 22],
              [25, 31, 96, 68, 51, 33],
              [75, 70, 54, 80, 83, 44],
              [43, 23, 43, 54, 65, 76]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]

vertical_6 = [[47, 44, 71, 'x', 88, 99],
            [22, 69, 75, 'x', 73, 33],
            [83, 85, 97, 'x', 57, 44],
            [25, 31, 96, 'x', 51, 55],
            [75, 70, 54, 'x', 83, 66],
            [32, 43, 54, 'x', 54, 65]]

right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]

right_to_left_6 = [['x', 44, 71, 8, 88, 44],
                 [22, 'x', 75, 65, 73, 55],
                 [83, 85, 'x', 89, 57, 66],
                 [25, 31, 96, 'x', 51, 77],
                 [75, 70, 54, 80, 'x', 88],
                 [12, 32, 43, 54, 65, 'x']]

left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]

left_to_right_6 = [[11, 22, 33, 44, 55, 'x'],
                  [47, 44, 71, 8, 'x', 65],
                  [22, 69, 75, 'x', 73, 54],
                  [83, 85, 'x', 89, 57, 43],
                  [25, 'x', 96, 68, 51, 32],
                  ['x', 70, 54, 80, 83, 21]]

inside_corners_b = [[47, 44, 71, 8, 24],
                  [22, 'x', 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 'x', 51],
                  [33, 70, 54, 80, 83]]

postage_stamp_b = [[47, 44, 71, 8, 34],
                  [22, 69, 75, 23, 73],
                  [83, 85, 'x', 89, 57],
                  ['x', 'x', 96, 68, 51],
                  ['x', 'x', 54, 80, 83]]

small_diamond_b = [[47, 44, 71, 83, 38],
                  [22, 69, 'x', 23, 73],
                  [83, 'x', 'x', 'x', 57],
                  [25, 23, 'x', 68, 51],
                  [34, 70, 54, 80, 83]]

outside_corners_b = [['x', 44, 71, 8, 'x'],
                  [22, 69, 75, 23, 73],
                  [83, 85, 'x', 89, 57],
                  [25, 23, 96, 68, 51],
                  ['x', 70, 54, 80, 'x']]

# Initial Solution
# class BingoScorer
#   def initialize(board)
#     @vert_var = 0
#     @board = board
#     @horizontal_counter = 0
#     @bingo = "No Bingo"
#   end
#   def bingocheck
#     while @horizontal_counter < @board.length
#       if @horizontal_counter == 0
#         diagonal_win_chk
#         # return if @bingo == "BINGO!"
#       end
#       horizontal_win_chk
#       # return if @bingo == "BINGO!"
#       vertical_win_chk
#       @horizontal_counter += 1
#     end
#     puts @bingo
#   end

#   def diagonal_win_chk
#     #top left to bottom right win
#     counter = 0
#     while counter < @board.length
#       if @board[counter][counter] == 'x'
#         if counter == @board.length - 1
#           # puts "BINGOl!"
#           @bingo = "BINGO!"
#         end
#         counter += 1
#       else
#         @horizontal_counter = 0
#         break
#       end
#     end
#     #top right to bottom left win
#     counter = @board.length - 1
#     while counter >= 0
#       if @board[@horizontal_counter][counter] == 'x'
#         if counter == 0
#           # puts "BINGOr!"
#           @bingo = "BINGO!"
#           @horizontal_counter = 0
#           break
#         end
#         counter -= 1
#         @horizontal_counter += 1
#       else
#         break
#       end
#     end
#   end
#   def horizontal_win_chk
#     counter = 0
#     while counter <= @board.length - 1
#       if @board[@horizontal_counter][counter] == 'x'
#         if counter == @board.length - 1
#             # puts "BINGOh!"
#             @bingo = "BINGO!"
#         end
#         counter += 1
#       else
#         break
#       end
#     end
#   end
#   def vertical_win_chk
#     if @vert_var != "NOPE"
#       while @vert_var < @board.length
#         if @board[@horizontal_counter][@vert_var] == 'x'
#           if @horizontal_counter == @board.length - 1
#             # puts "Bingov"
#             @bingo = "BINGO!"
#           end
#           break
#         else
#           @vert_var += 1
#         end
#       end
#     end
#   end
# end


# Refactored Solution
class BingoScorer
  def initialize(board)
    @board = board
    @vertical_counter = 0
    @horizontal_counter = 0
    #allows flexibility on board size
    @length = board.length
    #saves as bingo if found
    @bingo = "No Bingo"
  end
  def bingocheck # default method that calls each pattern for bingo
    while @horizontal_counter < @length
      #checks the first and last value of the first array for diagonals
      if @horizontal_counter == 0
        diagonal_win_chk
      end
      horizontal_win_chk
      vertical_win_chk
      @horizontal_counter += 1
    end
    puts @bingo #moment of truth
  end

  def diagonal_win_chk #top left to bottom right win
    counter = 0
    while counter < @length
      #iterating diagonally here since vertical and horizontal indexes are same value
      if @board[counter][counter] == 'x'
        if counter == @length - 1
          @bingo = "BINGO!"
        end
        counter += 1
      else
        break
      end
    end
    #top right to bottom left win
    counter = @length - 1 # last value of array
    while counter >= 0
      #iterating vertically within this method while using parent method to iterate horizontally
      if @board[@horizontal_counter][counter] == 'x'
        if counter == 0
          @bingo = "BINGO!"
          #clear horizontal_counter from affecting horizontal_win_chk and vertical_win_chk if more than one test is running
          @horizontal_counter = 0
          #answer found, so break loop
          break
        end
        counter -= 1
        #same reason as stated 5 lines above
        @horizontal_counter += 1
      else
        #if value not equal to x, break loop
        break
      end
    end
  end
  def horizontal_win_chk #reliant on parent method's horizontal loop
    counter = 0
    while counter <= @length - 1
      if @board[@horizontal_counter][counter] == 'x'
        if counter == @length - 1
            @bingo = "BINGO!"
        end
        counter += 1
      else
        break
      end
    end
  end
  def vertical_win_chk #reliant on parent method's horizontal loop
    while @vertical_counter < @length
      if @board[@horizontal_counter][@vertical_counter] == 'x'
        if @horizontal_counter == @length - 1
          @bingo = "BINGO!"
        end
        #similar to the horizontal_win_chk method above, using break to break vertical loop so we can continue looping horizontally in parent method
        break
      else
        #if value not equal to x, check next column over
        @vertical_counter += 1
      end
    end
  end
end
#OPTIONAL
  #Because optional win states cannot be expanded(they require a center spot and this won't exist for even numbered board lengths), I have to hard code the values specific for a 5x5 board
class BingoScorer_Optional
  # only works for 5 by 5
  def initialize board
    @board = board
    @bingo_array = []
    @values = []
    @bingo = "No Bingo"
  end
  def bingocheck
    inside_corners
    postage_stamp
    small_diamond
    outside_corners
    p @bingo
  end
  def inside_corners
    @values = [[1,1],[1,3],[2,2],[3,1],[3,3]]
    hard_chk
  end
  def postage_stamp
    @values = [[2,2],[3,0],[3,1],[4,0],[4,1]]
    hard_chk
  end
  def small_diamond
    @values = [[1,2],[2,1],[2,2],[2,3],[3,2]]
    hard_chk
  end
  def outside_corners
    @values = [[0,0],[0,4],[2,2],[4,0],[4,4]]
    hard_chk
  end
  def hard_chk
    @values.each do |val|
      if @board[val[0]][val[1]] == 'x'
        @bingo_array.push('x')
      else
        @bingo_array.clear
        break
      end
      if @bingo_array == ['x','x','x','x','x']
        @bingo = "BINGO!"
      end
    end
  end
end

# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
# NORMAL TESTS
# obj = BingoScorer.new(right_to_left)
# obj.bingocheck
# obj2 = BingoScorer.new(left_to_right)
# obj2.bingocheck
# obj3 = BingoScorer.new(horizontal)
# obj3.bingocheck
# obj4 = BingoScorer.new(vertical)
# obj4.bingocheck
#BOARD SIDES OF 6
# obj5 = BingoScorer.new(horizontal_6)
# obj5.bingocheck
# obj6 = BingoScorer.new(vertical_6)
# obj6.bingocheck
# obj7 = BingoScorer.new(right_to_left_6)
# obj7.bingocheck
# obj8 = BingoScorer.new(left_to_right_6)
# obj8.bingocheck
#OPTIONAL
obj9 = BingoScorer_Optional.new(inside_corners_b)
obj9.bingocheck
obj10 = BingoScorer_Optional.new(postage_stamp_b)
obj10.bingocheck
obj11 = BingoScorer_Optional.new(small_diamond_b)
obj11.bingocheck
obj12 = BingoScorer_Optional.new(outside_corners_b)
obj12.bingocheck
# Reflection
