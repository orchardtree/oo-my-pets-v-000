class Owner
  # code goes here
  @@all = []
  attr_accessor :cat, :dog
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
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    cat_purchase = Cat.new(name)
    cat_purchase.owner = self
  end
  
end












