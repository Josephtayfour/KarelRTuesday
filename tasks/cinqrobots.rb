require_relative "joseph_robot"
require_relative "../mixins/turner"
require_relative "../karel/robota"

include Turner

# MON premier robot
class Cinqrobots < JosephRobot

	def initialize(street, avenue, direction, beepers, colour) 
	    super(street, avenue, direction, beepers, colour)
	end
  
  def bring
  	pick_beeper
  	move
  	move
  	move
  	move
  	move
  	put_beeper
  	turn_right
  end

  def take 

  	pick_beeper
  	move 
  	move
  	move
  	move
  	move 
    put_beeper
    turn_right
   end

  def bringstart
  	move
  	move
  	move
  	move
  	move
  	put_beeper
  end



    	
end
