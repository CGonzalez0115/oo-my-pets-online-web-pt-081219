class Owner
  attr_reader :species, :name
  attr_accessor :pets, :dog, :cat, :pets

  @@all = []

  def initialize(species, name="Victoria")
    @name = name
    @species = "human"
    @pets = {:dogs => [], :cats => []}
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

  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name
  end

  def buy_cat(name)
    name = Dog.new << (name)
    @pets[:dogs] << name
  end

  def walk_dogs
    Dog.all.collect do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    Cat.all.collect do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    Dog.all.collect do |dog|
      dog.owner = nil == dog.mood = "nervous"
    end
    Cat.all.collect do |cat|
      cat.owner = nil == cat.mood = "nervous"
    end
  end

  def list_pets
    return "I have #{pets[:dogs].length} dog(s) and #{pets[:cats].length} cat(s)."
    @species = human
  end
end
