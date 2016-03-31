class Pirate

  attr_reader :name, :job, :rob_ship, :booty
  def initialize(name, job="Scallywag")
    @name = name
    @job = job
    @cursed = false
    @heinous_acts_committed = 0
    @booty = 0
  end

  def cursed?
     if @heinous_acts_committed < 3
       @cursed
     else
       @cursed = true
     end
   end

   def commit_heinous_act
     @heinous_acts_committed += 1
   end

   def rob_ship
     @booty += 100
   end

end
