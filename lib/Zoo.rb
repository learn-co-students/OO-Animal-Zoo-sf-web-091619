class Zoo

    attr_accessor :name, :location

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animals.all.select do |animal|
            animal.zoo == self
        end
    end

    def animal_species
        animals.map do |animal|
            animal.species
        end.uniq
    end

    def find_by_species(animal_species)
        animals.select do |animal|
            animal.species == animal_species
        end
    end

    def animal_nicknames
        animals.select do |animal|
            animal.nickname == self
        end
    end

    def self.find_by_loation(location)
        @@all.select do |zoo|
            zoo.location == location
        end
    end


end
