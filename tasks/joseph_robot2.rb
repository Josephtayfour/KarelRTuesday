require_relative "../mixins/sensor_pack"
require_relative "../karel/ur_robot"
require_relative "../mixins/intelligent"

# MON premier robot
class JosephRobot2 < UrRobot

    include SensorPack

    include Intelligent

    def twentyfivesteps 
        	fivesteps
        	turn_right
        	
        	fivesteps
        	turn_left
        	
        	fivesteps
        	turn_right
        	
        	fivesteps
        	turn_left
        	
        	fivesteps
        	turn_right
    	
     end

     
    def front_is_blocked?
        !front_is_clear?
    end

    def move 
        unless front_is_blocked?
            super
        end
    end

    def checkbeeper
        front_is_blocked?
        pick_beeper
        move
    end 

    def bigstep
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.turn_right 
        move
        karel.turn_right 
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.turn_left
        move
        karel.turn_left 
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.turn_right 
        move
        karel.turn_right 
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.turn_left
        move
        karel.turn_left 
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.turn_right 
        move
        karel.turn_right 
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.turn_left
        move
        karel.turn_left 
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.turn_right 
        move
        karel.turn_right 
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.turn_left
        move
        karel.turn_left 
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
        karel.checkbeeper
    end    
end