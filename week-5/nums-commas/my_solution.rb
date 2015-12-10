# Numbers to Commas Solo Challenge

# I spent [1.25] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? (i.e. What should the code return?) a comma separated string of the input
# What are the steps needed to solve the problem?
# convert the integer to a string
#Determine how many 'digits' are in the string
#input commas in the correct place

#1. Initial Solution
def separate_comma(number)
  number = number.to_s
  len = number.length
  x = 1
  comma_spot = -4
  while len > x*3
    number.insert(comma_spot, ",")
    x += 1
    comma_spot -= 4
  end
  number
end



# 2. Refactored Solution


#I looked at a ton of string methods in ruby docs and I can't figure out another good way to do this without diving into regex which it said we weren't supposed to do.


# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?

At first I was definitely going to convert the integer
into an array, with each digit as an item in the array.
I think this is because I did a couple of exercises
today that had to do with arrays so I was more
comfortable with those. But I realized that it would
create the extra step of converting the array into
a string when I was doing pseudocode. So I suppose
I refactored during pseudocode today and not after
my initial solution!

Was your pseudocode effective in helping you build a successful initial solution?

Absolutely! I did have to learn about .insert but other
than that, the pseudocode put everything out there
for me.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

So, as I mentioned, I really "refactored" before I
even did my initial solution when I decided on how
I would approach the problem. I looked up ".insert"
while I was doing my initial solution. I hoped something
 like it existed and it did!


How did you initially iterate through the data structure?

A while loop

Do you feel your refactored solution is more readable than your initial solution? Why?

See answers above about today's refactoring process.
It's definitely more readable than my original idea
which involved arrays.

During my refactoring process I did try to make the
code a bit shorter by leaving out the "len" variable
and just plugging in number.length directly into
my while loop. But I realized this didn't work
because my while loop made number.length longer
as it looped, so it messed up the logic and wouldn't
work anymore.

=end