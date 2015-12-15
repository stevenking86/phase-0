#Attr Methods

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# Pseudocode

# Input: NameData won't have an input. It'll be given
#the name "Steven" when initialized. Greetings will
#get it's name from the instance of NameData it makes.
# Output:When I call .hello on greet it will give me
# a nice greeting
# Steps:
# Initialize NameData w/ @name being "Steven"
#attr_reader the @name part
#Initialize Greetings with an instance of NameData
#attr_reader the name
#DEFINE a hello method that prints out a nice string
#using @name

class NameData
  def initialize
    @name = "Steven"
  end

  attr_reader :name

end


class Greetings
  def initialize
    @name = NameData.new
  end

  attr_reader :name

  def hello
    "Hello #{@name.name}! How wonderful to see you today."
  end


end



# Reflection
=begin
Release 1 reflection:
What are these methods doing?

Initialize is creating an instance of the
Profile class that takes 3 arguments.

Print info is printing the info in the profile in a
nice way.

The "what_is" methods just return a
particular attribute of the profile.

The "change" methods allow them to be changed.

How are they modifying or returning the value of instance variables?

I believe I answered that above!

#Release 2 reflections:
What changed between the last release and this release?

The "attr_reader :age" has been added

What was replaced?

The what_is_age method

Is this code simpler than the last?

Yes!

#Release 3 reflections:

What changed between the last release and this release?
What was replaced?

attr_writer :age has been added and change_age= has
been removed.

Also the way the methods are called changed because
of this.

Is this code simpler than the last?

Yes.

#Release 6 reflection
What is a reader method?

A reader method can spit back out a variable

What is a writer method?

A writer method allows the variable to me changed.

What do the attr methods do for you?

They allow us to write really simple 1 line methods
to do reading and writing of instance variables.

Should you always use an accessor to cover your bases? Why or why not?

No, because you don't want some things to be able to be
written over.

What is confusing to you about these methods?

I actually struggled with this. I had my Greetings
class variables named different things and I kept
getting errors. Once I changed them to @name, things
worked again. I will go back through and figure out
why that is.


=end