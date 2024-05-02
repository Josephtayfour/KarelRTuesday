require_relative "joseph_robot"
require_relative "../mixins/turner"
require_relative "../karel/robota"

include Turner

# MON premier robot
class RobotFaceNord < JosephRobot

	def initialize(street, avenue, beepers) 
	    super(street, avenue, Robota::NORTH, beepers)
	end
  
    	
end
