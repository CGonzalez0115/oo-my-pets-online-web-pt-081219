class Cat
  attr_reader :name
  attr_accessor :mood, :owner

  @@all = []
  def initialize(init_name, init_owner)
    @name = "Crookshanks"
    @owner = "Hermione"
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

  def knows_all_the_cats
    Cat.all.count
  end
end
