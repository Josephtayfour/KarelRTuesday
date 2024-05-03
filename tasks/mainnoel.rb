require_relative "../karel/ur_robot"
require_relative "../mixins/Turner"
# MON premier robot
class MainNoel  < UrRobot


include Turner

	def goin
        turn_left
		move
        move
        turn_right 
        move
        turn_left
        move
        move
        pick_beeper
        pick_beeper
        turn_right 
        move
        pick_beeper
        pick_beeper
    end

	def out 
		turn_right
        turn_right 
        move 
        turn_left 
        move
        move
        turn_right 
        move
        turn_left 
        move
        move    
	end

	def between
    	turn_left 
        move
        move
        move 
  	end
 
    def bigstep
        turn_right 
        turn_right 
        move
        move
        move 
        move
        move
        move 
        move
        move
        move 
        move
        turn_right
        move
        move
        move
        move
        move
        move
        turn_right 
        move
    end

    def bigstep2
        turn_right 
        turn_right 
        move
        move
        move 
        move
        move
        move 
        move
        move
        move 
        move
        turn_right
        move
        move
        move
        turn_left
        move
        turn_right
        move
        move
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
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