class Medusa

  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    until @statues.count == 4
      @statues << victim
      victim.become_stone
    end
    if @statues.count == 4
      @statues.shift
    else
      @statues
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
