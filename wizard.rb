class Wizard

  attr_reader :name

  def initialize(name, bearded={bearded: true})
    @name = name
    @bearded = bearded
  end

  def bearded?
    @bearded
  end

end
