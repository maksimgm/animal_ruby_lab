require_relative "./animal.rb"

class Cat < Animal
  
  def initialize name, age
    super name, age
  end
  
  def meow
    if sleeping == false
      p "MEOW"
    else
      p "....."
    end
  end

end