require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
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
 
    def fourbeeperspick
    	move
    	pick_beeper 
    	move
    	pick_beeper
   		move
    	pick_beeper 
    	move
    	pick_beeper 
    	move
    	pick_beeper 
  	end

    def threebeeperspick 
    	pick_beeper 
    	move 
    	move 
    	pick_beeper 
    	move 
    	move 
    	pick_beeper
    end 

    def twobeeperspick
    	pick_beeper 
    	move 
    	move 
    	pick_beeper 
    end 

    def fourbeepers
    	put_beeper 
    	move 
    	move 
    	put_beeper 
    	move 
    	move 
    	put_beeper 
    	move 
    	move 
    	put_beeper
    end

    def threebeepers
    	put_beeper 
    	move 
    	move 
    	put_beeper 
    	move 
    	move 
    	put_beeper
    end 

    def twobeepers
        put_beeper 
    	move 
    	move 
    	put_beeper 
    end 


end