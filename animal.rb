class Animal

  attr_accessor :name, :age, :sleeping

  # @sleeping = true

  def initialize name,age
    @name = name
    @age = age
    @sleeping = true
  end

  def wake_up
    @sleeping = false
  end

  def go_to_sleep
    @sleeping = true
  end

  def feed
    if @sleeping == false
      "NOM NOM NOM"
    else
      "Go away, I'm asleep"
    end
  end

end