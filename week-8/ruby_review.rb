# Numbers to English Words


# I worked on this challenge [by myself ].
# This challenge took me [#] hours.


# Pseudocode
=begin
MAKE words hash
 1: ["one"]
 2: ["two","twenty"]
 3: ["three","thirty"]
 etc
 11-19



DEFINE in_words
input: an integer
outputs:  words
 split word into array
 IF integer len = 1
   result = wordshash[integer.to_sym[0]
 else
   exception for teens here
   firstword = wordshash[numarray[0].to_sym[1]]
   secondword = wordshash[numarray[1].tosym[0]
   result = firstword + secondword
 RETURN result

=end
# Initial Solution

#create hash relating integers to words
word_maker = {
    0 => [""],
    1 => ["one"],
    2 => ["two", "twenty"],
    3 => ["three","thirty"],
    4 => ["four","fourty"],
    5 => ["five","fifty"],
    6 => ["six", "sixty"],
    7 => ["seven", "seventy"],
    8 => ["eight", "eighty"],
    9 => ["nine", "ninety"],
    10 => ["ten"],
    11 => ["eleven"],
    12 => ["twelve"],
    13 => ["thirteen"],
    14 => ["fourteen"],
    15 => ["fifteen"],
    16 => ["sixteen"],
    17 => ["seventeen"],
    18 => ["eighteen"],
    19 => ["nineteen"],
}



# def in_words(raw_number,hash)
#   #split number into array
#   num_split = raw_number.to_s.split(//)
#   if num_split.length == 1
#     x = num_split[0].to_i
#     result = hash[x][0]
#   elsif raw_number > 9 && raw_number < 20
#     result = hash[raw_number]
#   else
#     x = num_split[0].to_i
#     y = num_split[1].to_i
#     first = hash[x][1]
#     second = hash[y][0]
#     result = "#{first} #{second}"
#   end
#   return result
# end

# driver code
# puts in_words(99,word_maker)


# Refactored Solution

def in_words(raw_number,hash)
  #split raw_number into array
  num_split = raw_number.to_s.split(//)
  if num_split.length == 1
    #call appropriate number in hash
    return hash[(num_split[0].to_i)][0]
  elsif raw_number > 9 && raw_number < 20
    return hash[raw_number]
  else
    #get appropriate number for each digit in hash
    first = hash[(num_split[0].to_i)][1]
    second = hash[(num_split[1].to_i)][0]
    return "#{first} #{second}"
  end
end

##driver code
puts in_words(89,word_maker)


# Reflection
=begin
What concepts did you review or learn in this challenge?

I reviewed hashes and accessing items within hashing. I also
reviewed the split method which I was a bit fuzzy on. I also
reviewed basic ruby syntax for methods and loops

What is still confusing to you about Ruby?

Not too much! I really struggled at first trying to access
the particular item in an array in my hash. But that was just good
review of nested stuff.

What are you going to study to get more prepared for Phase 1?

I think I just need to do a lot more exercises like this in both
ruby and javascript to tighten up.

=end