class Owner
  attr_reader :species, :name
  attr_accessor :pets, :dog, :cat, :pets

  @@all = []
  @@pets = {:dogs => [], :cats => []}

  def initialize(species)
    @name = "Victoria"
    @species = "human"

    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @species
  end

  def say_species
    return "I am a #{@species}."
  end

  def pets
    @@pets
  end

  def cats
    Cats.all.select do |cat|
     puts Cats.all
   end
  end

  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat)
  end

  def walk_dogs
    Dog.all.collect do |dog|
      dog.mood = "happy"
    end
  end

  def sell_pets
    self.dogs.collect do |dog|
      dog.owner = nil
      dog.mood = "nervous"
    end
    self.cats.collect do |cat|
      cat.owner = nil
      cat.mood = "nervous"
    end
  end

  def list_pets
    "I have #{pets[:dogs].length} dog(s) and #{pets[:cats].length} cat(s)."
  end
end
