# Build a class AnimalSorter

# Make sure there are two constants that AnimalSorter knows about, 
# SEA_ANIMALS and LAND_ANIMALS

# AnimalSorter should be able to accept an array of animals on 
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

# Read the test suite for an example of a nested array.

#class AnimalSorter
#
#attr_accessor :animals
#    SEA_ANIMALS = ["marlin", "octopus", "fish"]
#    LAND_ANIMALS= ["aardvark", "cat", "elephant"]
#
#def initialize(animals)
#    @animals = animals
#end
#
#def to_a
#    array = [[],[]]
#    @animals.each do |animal|
#        if SEA_ANIMALS.include?(animal)
#        array[0] << animal
#    
#        elsif LAND_ANIMALS.include?(animal)
#        array[1] << animal
#        end
#    end
#    
#array
#end
#    
#    
#end

class AnimalSorter

attr_accessor :animals
SEA_ANIMALS = ["marlin", "octopus", "fish"]
LAND_ANIMALS= ["aardvark", "cat", "elephant"]

def initialize(animals)
    @animals = animals
end

def to_a
  [@animals.select {|animal| SEA_ANIMALS.include?(animal)}, @animals.select {|animal| LAND_ANIMALS.include?(animal)}]
end
end

