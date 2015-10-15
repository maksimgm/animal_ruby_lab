
require "pry"
require_relative "../dog.rb"

describe "Dog Test" do
  
  before(:all) do
    @dog = Dog.new("Spot",3)
  end
  
  describe "Spot is an instance of animal" do
    it "checks to see if Spot is an instance of animal" do
      # expect(@dog.name).to be_an_instance_of(Animal)
      expect(@dog).to be_an_instance_of(Dog)
    end
  end

  describe "First letter in Spot's name" do
    it "Returns first letter" do
      expect(@dog.name).to start_with("S")
    end
  end

  describe "Woof instance " do
    it "Wide Awake" do
    @dog.wake_up
    # binding.pry
      expect(@dog.woof).to eq "WOOF"
    end
    
    it "Fast Asleep" do
    @dog.woof
    @dog.sleeping = true
        expect(@dog.woof).to eq "zzzzzz...."
    end
  end

  describe "treats_arr" do
    it "should return treats" do
      Dog.treats_arr
      expect(Dog.treats_arr).to eq(["coffee", "whiskey", "cookies"])
    end
  end

end