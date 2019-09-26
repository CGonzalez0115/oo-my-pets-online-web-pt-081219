class Cat
  attr_reader :name
  attr_accessor :mood, :owner

  @@all = []
  def initialize(name)
    @name = name
    @owner = owner
    @mood = mood
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    Cat.all.count
  end
end
