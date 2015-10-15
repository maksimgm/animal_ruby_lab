require_relative "../animal"

describe "Animal Test" do

  before(:all) do
    @animal = Animal.new("Spot",3)
  end

  describe "wake up" do
    it "Wake up passes" do
      @animal.wake_up
      expect(@animal.sleeping).to be false
    end
  end

  describe "sleep" do
    it "Go to sleep passes" do
      @animal.go_to_sleep
      expect(@animal.sleeping).to be true
    end
  end

  describe "feed" do
    it "Animal gets fed " do
      @animal.wake_up
      expect(@animal.feed).to eq "NOM NOM NOM"
      # expect(@animal.sleeping).to be false
    end

    it "Animal does not get fed" do
      @animal.go_to_sleep
      expect(@animal.feed).to eq "Go away, I'm asleep"
      # expect(@animal.sleeping).to be true
    end
  end 
end