class Cat
  attr_reader :name
  attr_accessor :owner, :mood

  @@all = []

  def initialize(name, owner="Hermione")
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def knows_all_the_cats
    Cats.all.count
  end
end
