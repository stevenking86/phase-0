#Accountability Groups Solo Challenge


#Pseudocode:
#Make an array of all thes in my cohort
#Make an empty hash
#Create a counter
#Create a key named for the counter
#Make the value an array of 4 randomly chosens.
#remove thoses from the array
#up the counter
#repeat until there are less than 4s left in the array
#add thoses into existing groups

#Initial solution
students = [
"Alex Forger",
"Alexander Nelson",
"Karen Ball",
"Christopher Bovio",
"Gino Paul Capio",
"Jonathan Chin",
"Claire Samuels",
"Ray Curran",
"David Louie",
"David Spivey",
"Max Davis",
"Devin Mandelbaum",
"Afton Downey",
"Jordan Fox",
"Rebecca Gahart",
"Gary Wong",
"Hodges Glenn",
"Everett Golden",
"Christopher Graf",
"Alana Hanson",
"LeeAnne Hawley",
"Sabri Helal",
"Thomas Huang",
"Jeff Schneider",
"Jillian Dunleavy",
"Kevin Huang",
"Khamla Phimmachack",
"KT Khoo",
"Andrew S Kim",
"Joseph Kim",
"Michal Klimek",
"Nathan Knockeart",
"Brigitte Kozena",
"Donald Lang",
"Tiffany Larson",
"Liam Mackey",
"Johanna Lonn",
"Tyler McKenzie",
"Katie Meyer",
"Meagan Munch",
"Lucas Nagle",
"Lydia Nash",
"Jovanka Nikolovski",
"James O'Neal",
"Greg Park",
"Patrick Oliphant",
"Peter Lowe",
"Lauren Reid",
"Roche Janken",
"David Rothschild",
"Susan Savariar",
"Kurt Schlueter",
"Sharon Claitor",
"Marshall Sosland",
"Catie Stallings",
"Steven King",
"Eric Tenza",
"Timur Catakli",
"Todd Seller",
"Dan Turcza",
"Lindsey Ullman",
"Raj Vashist",
"Violet Dang",
"Chris Wong",
"Angelika Yoder",
"Michelle Zulli",]

# def make_groups(array)
#   groups=Hash.new
#   counter = 1
#   while array.length > 3
#     groups[counter] = []
#     selection = array.sample(4)
#     groups[counter] = selection
#     for x in selection
#       array.delete(x)
#     end
#     counter += 1
#   end
#   counter = 1
#   while array.length != 0
#     groups[counter] << array.pop
#     counter +=1
#   end
#   puts groups
# end

# make_groups(students)

# Release 3 contemplations:
# My program gives different results each time it is run.
# My program doesn't store past outputs. I'm not sure it should.
# If there was one less person in the cohort, my program would still work great.
# I don't think I'm done. My code works great but it's very ugly.

#Refactored solution:

def make_groups(array)
  groups=Hash.new
  counter = 1
  while array.length > 3
    selection = array.sample(4)
    groups[counter] = selection
    selection.each {|x| array.delete(x)}
    counter += 1
  end
  while array.length != 0
    counter -= 1
    groups[counter] << array.pop
  end
  groups
end

p make_groups(students)

=begin
Reflection:

What was the most interesting and most difficult part of this challenge?

Thinking through it was actually interesting. In my head I thought
it would be really really simple. Once I was pseudocoding I
realized there was a lot more to it than I thought.  Also learning
about #sample was really interesting. I assumed I would be using
#rand for this.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Definitely. I'm leaving out less steps when I pseudocode now.

Was your approach for automating this task a good solution? What could have made it even better?

It was pretty good. I wish there was a way I could create the
random group, store it where I want to store it, and remove it
from the original array all at once though. That'd make it better.
But my ruby-docs hunt didn't reveal anything.

What data structure did you decide to store the accountability groups in and why?

I chose a hash, maybe because I've been working on other challenges
with those. It made sense though. It gave us a group name and
a group all together.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

Not really any new methods today, but I made use of a single line
each iterator, rather than a for/in iterator which really made
it cleaner to look at. I also removed an unnecessary line messing
with my counter and changed how that worked. I also previously had
a 'puts' within my method but I changed it to a p in the actual
method call after reading about the driver solution thing.



=end