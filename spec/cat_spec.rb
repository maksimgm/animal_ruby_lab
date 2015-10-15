require_relative "../cat.rb"

describe "Cat Test" do
  
  before(:all) do
    @cat = Cat.new("Spot",3)
  end
  
  describe "Spot is an instance of animal" do
    it "checks to see if Spot is an instance of animal" do
      expect(@cat).to be_an_instance_of(Cat)
    end
  end

  describe "Spot meows" do
    it "checks to see if cat is sleeping" do
      @cat.wake_up
      expect(@cat.meow).to eq("MEOW")
    end

    it "checks to see if cat is awake" do
      @cat.meow
      @cat.sleeping = true
      expect(@cat.meow).to eq(".....")
    end
  end
end