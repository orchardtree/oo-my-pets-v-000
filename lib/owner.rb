class Owner
  # code goes here
  @@all = []
  attr_accessor :cat
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def species
    "human"
  end
  
  def say_species 
    "I am a human."
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
    Cat.all
  end
end





