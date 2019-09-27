class Dog
  attr_reader :name
  attr_accessor :mood, :owner

  @@all = []
  def initialize(init_name, init_owner)
    @name = init_name
    @owner = "Hermione"
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

  def knows_all_the_cats
    Dog.all.count
  end
end
