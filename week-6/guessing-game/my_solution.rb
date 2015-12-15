# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: And integer called answer
# Output: The guess method will return a symbol, either
#:high, :low, or :correct
#The solved? method will return true or false
# Steps:
#DEFINE my initialize method
# @answer will equal answer
#end
#DEFINE my guess method
# get input from the user, assign it a variable number_guessed
#IF number_guessed is @answer
# return :correct
#ELSIF nubmer_guessed is < @answer
#return :low
#ELSE
#return :high
#end
#DEFINE solved?
# IF guess(number_guessed) is correct
#   return true
# ELSE
#   return false


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @last_guess = 0
#   end

#   def guess(number_guessed)
#     @last_guess = number_guessed
#     if number_guessed == @answer
#       :correct
#     elsif number_guessed < @answer
#       :low
#     else
#       :high
#     end
#   end

#   def solved?
#     if guess(@last_guess) == nil
#       false
#     elsif guess(@last_guess) == :correct
#       true
#     else
#       false
#     end
#   end
# end





# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
    @last_guess = nil
  end

  def guess(number_guessed)
    @last_guess = number_guessed
    if @last_guess == nil || number_guessed < @answer
      :low
    elsif number_guessed == @answer
      :correct
    else
      :high
    end
  end

  def solved?
    guess(@last_guess) == :correct ? true : false
  end
end





# Reflection

=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

In this case the instance variables @answer is
 functioning like a real life "What number am
 I thinking of" number. It can be changed if we
 re-start the game just like in real life. It's not
 the "answer" forever.

When should you use instance variables? What do they do for you?

I was able to use an extra instance variable beyond
@answer in this challenge and it did a lot for me. I
created @last_guess so I could call it in another
method. @last_guess became a part of the instance of
guessing_game so I could call it again later.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

I used flow control to set up my ifs and elsifs
in the right order. I would say I didn't really
get it optomized until I refactored. I didn't have
too much trouble because I was thinking about it
from the start on this one.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Symbols are great because they can never change. For
example, :correct will never become :corrects. Every
symbol is a unique object. They were useful here when
building the solved method. It was easy to just check
if our guess method had returned :correct or not.
If I didn't use a symbol I would've had to create
a variable and set it to "correct" and then maybe
check if variable="correct" in my solved? method.


=end