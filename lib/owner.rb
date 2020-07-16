require "pry"
class Owner

  attr_reader :name, :species
  @@all = []

 def initialize(name)
  @name = name
  @species = "human"
  @@all << self

 end

 def say_species
  "I am a #{@species}."
 end
 
 def self.all
  @@all
 end

 def self.count
  @@all.count
 end

 def self.reset_all
  @@all.clear
 end

 def cats
  Cat.all.find_all do |a_cat|
    a_cat.owner == self 
  end
 end

 def dogs
  Dog.all.find_all do |a_dog|
    a_dog.owner == self
  end
end

  def buy_cat


  end

end