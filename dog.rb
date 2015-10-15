require_relative "./animal.rb"

class Dog < Animal

  attr_accessor :favorite_treat
  # class variable.... Dog.favorite_treats
  @@favorite_treats = ["coffee", "whiskey", "cookies"]

  def initialize name, age
    super name, age
    @favorite_treat = @@favorite_treats.sample
  end
  
  def woof
    if @sleeping == false
      p "WOOF"
    else
      p "zzzzzz...."
    end
  end

  def self.treat_adder(treat)
    @@favorite_treats << treat
  end

  def self.treats_arr
    @@favorite_treats
  end

end
