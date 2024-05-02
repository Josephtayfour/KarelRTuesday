require_relative "../karel/ur_robot"
require_relative "../mixins/turner"

include Turner

# MON premier robot
class ClocheTest < UrRobot
  
  def verticalput 	
  	put_beeper
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
    move
    put_beeper
    move
    turn_left
    move
    turn_left
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
    move
    turn_left
    move
    move
    turn_left 
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
    put_beeper
    move
  end

  def horizontalput
  	turn_right 
    move
    turn_right 
    move
    move
    move
    move
    put_beeper
    turn_left 
    move
    turn_right
    move
    put_beeper
    turn_right 
    move
    put_beeper
    move
    move
    move
    move
    put_beeper
    move
    put_beeper
    turn_right
    move
    turn_right 
    move 
    put_beeper
  end

end