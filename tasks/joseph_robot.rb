require_relative "../karel/ur_robot"
# MON premier robot
class JosephRobot  < UrRobot

	def turn_right
		turn_left
		turn_left
		turn_left

	end

	def Back_up
		turn_left
		turn_left
		move
		turn_left
		turn_left
	end

	def fivesteps 
    	move
    	put_beeper 
    	move
    	put_beeper
   		move
    	put_beeper 
    	move
    	put_beeper 
    	move
    	put_beeper 
  	end
end