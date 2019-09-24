class Animal

    attr_accessor :nickname, :weight, :species

    def initialize(nickname, weight, species)
        @nickname = nickname
        @weight = weight
        @species = species
    end

    def self.all
        @@all
    end

    def zoo
        Zoo.all.select do |zoo|
            zoo.animal == self
        end
    end

    def self.find_by_species(animal_species)
        @@all.select do |animal|
            animal.species == species
        end
    end

end
