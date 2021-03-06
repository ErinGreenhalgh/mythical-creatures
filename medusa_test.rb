gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'medusa'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    medusa = Medusa.new("Cassiopeia")
    guy = Person.new("Perseus")

    medusa.stare(guy)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
    #first is a method for array,
    #name is the method we created in Person
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

  def test_it_can_only_have_three_victims
    medusa = Medusa.new("Betty")
    victim1 = Person.new("Harry")
    medusa.stare(victim1)
    victim2 = Person.new("Ron")
    medusa.stare(victim2)
    victim3 = Person.new("Hermione")
    medusa.stare(victim3)
    victim4 = Person.new("Draco")
    medusa.stare(victim4)
    assert_equal 3, medusa.statues.count
  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    medusa = Medusa.new("Betty")
    victim1 = Person.new("Harry")
    medusa.stare(victim1)
    victim2 = Person.new("Ron")
    medusa.stare(victim2)
    victim3 = Person.new("Hermione")
    medusa.stare(victim3)
    victim4 = Person.new("Draco")
    medusa.stare(victim4)
    assert_equal ["Ron", "Hermione", "Draco"], medusa.statues.map {|victim| victim.name }
  end

end
