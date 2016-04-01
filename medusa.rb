class Medusa

  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if @statues.count < 3
      @statues << victim
      victim.become_stone
    else
      @statues << victim
      victim.become_stone
      @statues.shift
    end
  end
end

class Person

  attr_reader :name

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

  def become_stone
    @stoned = true
  end
end
