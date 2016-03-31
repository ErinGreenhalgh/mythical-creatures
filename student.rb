# * Create a student.
# * They should have a name.
# * They should have a house.
# * They should have a method called #name that prints to screen, "Hello, my name is name and I'm in house"
# * They should have a method that returns (your choice of spell"
# * Add a method called get_points that adds a number of points as an argument.
# * Add a method called points that tells us how many points the student has.

require 'pry'
class Student

  attr_reader :points
  def initialize(name, house)
    @name = name
    @house = house
  end

  def introduce_yourself
    puts "Hello my name is #{@name} and I'm in #{@house} house."
  end

  def do_magic
    puts "Wingardium leviosa"
  end

  def get_points(points)
    @points = points
  end

  def tell_points
    @points
  end


end

binding.pry
