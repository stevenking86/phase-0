# Virus Predictor

# I worked on this challenge [with: Liam ].
# We spent [.75] hours on this challenge.

# EXPLANATION OF require_relative
#
# Require requires you to use the absolute file path. Require_relative allows you to use the relative file path. Load allows for dynamic changes.
require_relative 'state_data'

class VirusPredictor
  # Gathering input and creating instance of the virus predictor class. And declaring variables we can use througout the entire class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Calls the two other methods in the class
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # Tkes population density and multiplies population by a specific number and rounds down to the nearest integer and assigns that number to number of deaths prints statement about how many people will die in each state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end
  # Calculates the amount of time it takes to spread across the state.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end
def run_report(data)
  data.each do |state, info|
    instance = VirusPredictor.new(state, info[:population_density], info[:population])
    instance.virus_effects
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# Creating instances of the virus predictor class
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?

The rocket syntax is used when a string or integer is
used as the key. The other kind is used for symbols.

What does require_relative do? How is it different from require?

require_relative loads in a file using the relative
file path. Require uses the absolute path.

What are some ways to iterate through a hash?

We used .each!

When refactoring virus_effects, what stood out to you about the variables, if anything?

They were class variables. Therefore, we didn't need to
bring them in as arguments for other methods.

What concept did you most solidify in this challenge?

A couple concepts - - loading in data from other files
and iterating over hashes.

=end