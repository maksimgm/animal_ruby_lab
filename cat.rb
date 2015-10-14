require_relative "./animal.rb"

class Cat < Animal

  def meow
    if sleeping == false
      p "MEOW"
    else
      p "....."
    end
  end

end