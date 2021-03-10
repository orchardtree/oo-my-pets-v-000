class Owner
  # code goes here
  @@all = []
  attr_reader :name
  
  def initialize(name)
    @name = name
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
end