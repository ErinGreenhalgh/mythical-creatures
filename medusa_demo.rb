class Medusa

  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim) #takes the thing that is passed,
    #in this case guy, which is a Person obj
    #stores it in this local var victim to use in the method
    @statues << victim
    victim.get_stoned
    #victim.stoned = true
    #this is a weak point where poeple could put in
    #bad data instead of true; reason to avoid accessors
  end

end


class Person

  attr_reader :name
  #attr_accessor :stoned; instead we'll use get_stoned method 
  def initialize(name)
    @name
    @stoned = false

  def stoned?
    @stoned
  end

  def get_stoned
    @stoned = true
  end

end
