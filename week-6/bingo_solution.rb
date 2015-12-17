# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #DEFINE call
  #  make letters array of b,i,n,g,o
  #  set a called_letter variable from sampling array
  #  set a  letter instance variable to same sample from the array. It
  #will be a position 1-5
  #  set a num instance variable to a random number from range 1-100
  #puts the call to the screen
  #end
# Check the called column for the number called.
  #DEFINE check
  #  IF num variable exists in any array at the letter variable
  #  position (probably use an each statement here)
  #    change that number to 'x' string
  #  END

# Display a column to the console
  #puts the letter variable position from each array

# Display the board to the console (prettily)
  #print "BINGO" with nice spaces
  #print each array from the board w/ nice spaces

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     letters = ["B","I","N","G","O"]
#     @called_letter = letters.sample
#     @letter = letters.index(@called_letter)
#     @num = rand(1..100)
#     puts "The next number is #{@called_letter} #{@num}"
#   end

#   def check
#     @bingo_board.each do |numbers|
#       if numbers[@letter] == @num
#         puts "You have it!"
#         numbers[@letter] = "X"
#       end
#     end
#     puts "Updated #{@called_letter} column:"
#     @bingo_board.each do |numbers|
#       p numbers[@letter]
#     end
#   end

#   def display
#     puts " B   I   N   G   O"
#     @bingo_board.each {|x| p x}
#   end




#end

# Refactored Solution w/ Bonus challenge

class BingoBoard

  def initialize(board)
    @bingo_board = board
    puts "Here's your board. Good luck!"
    display
  end

  def call
    letters = ["B","I","N","G","O"]
    @called_letter = letters.sample
    @letter = letters.index(@called_letter)
    case @called_letter
    #for calling traditional bingo board bingo
    when "B"
      @num = rand(1..15)
    when "I"
      @num = rand(16..30)
    when "N"
      @num = rand(31..45)
    when "G"
      @num = rand(46..60)
    when "O"
      @num = rand(61..75)
    end
    puts "The next number is #{@called_letter} #{@num}"
  end

  def check
    @bingo_board.each do |numbers|
      if numbers[@letter] == @num
        puts "You have it!"
        numbers[@letter] = "X"
      end
    end
    #puts "Updated #{@called_letter} column:"
   # @bingo_board.each {|numbers| p numbers[@letter]
  end

  def display
    puts " B   I   N   G   O"
    @bingo_board.each {|x| p x}
  end

  def next_turn
    call
    check
    display
  end

end

def create_board
  new_board = []
  x = 0
  while x <5
    new_board[x]=[]
    new_board[x]<<rand(1..15)
    new_board[x]<<rand(16..30)
    new_board[x]<<rand(31..45)
    new_board[x]<<rand(46..60)
    new_board[x]<<rand(61..75)
    x+=1
  end
  new_board[2][2] = "X"
  new_board
end






#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
#board = [[47, 44, 71, 8, 88],
        #[22, 69, 75, 65, 73],
        # [83, 85, 97, 89, 57],
        # [25, 31, 96, 68, 51],
        # [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(create_board)
sleep 5
new_game.next_turn
sleep 3
new_game.next_turn
sleep 3
new_game.next_turn
sleep 3
new_game.next_turn







#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

I've been trying to work on my pseudocoding and this was the first
time I really implemented the new approach I got from one of my
guides. I liked it. I pseudocoded a bit more like real code.

What are the benefits of using a class for this challenge?

A class is great for this because having an "instance" of a board
makes so much sense. Once you've got that, you can start doing
things with it - manipulating it - playing the game basically!

How can you access coordinates in a nested array?

You just have to keep adding on pairs of brackets, basically.

What methods did you use to access and modify the array?

.each - iterates over the array
.index - finds the index where something is located within an array
.sample - takes a random item from an array
<< - pushes things into an array

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

This was my first time using .index even though it's a simple one. If
you know you have a variable storing something within the array
you can call .index on it to figure out where it is in the array. I
actually had to look this up really early on as I was stuck on how
to do this.
It works like: array_name.index(object_you_want_index_of)

How did you determine what should be an instance variable versus a local variable?

I used instance variables when I knew I would need them elsewhere
in the class. I only used local variables once, in order to print
something to the console.

What do you feel is most improved in your refactored solution?

I'm proud of my next_turn method I made. I couldn't think of a lot
of cases where someone would want to call the BINGO number without
checking to see if it was on their board and then display the
updated board.

I also really enjoyed diving into the bonus part and implementing it
into my call method.

=end