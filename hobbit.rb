class Hobbit

  attr_reader :name, :disposition, :age
  def initialize(name,disposition="homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @old = false
    @has_ring = false
    @is_short = true
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if @age < 33
      @adult = false
    elsif @age < 101
      @adult = true
    end
  end

  def old?
    if @age >= 101
      @old = true
    end
  end

  def has_ring?
    if @name == "Frodo"
      @has_ring = true
    else
      @has_ring
    end
  end

  def is_short?
    @is_short
  end
end
