# Copyright 2010 Joseph Bergin
# License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack.rb"

# A class whose robots know how to sweep a short staircase of beepers
class AmbulanceRobot < UrRobot
  include SensorPack
  
  def turn_right
    3.times { turn_left }
  end

  def right_is_clear?
    turn_right
    clear = front_is_clear?
    turn_left
    clear
  end
  
  def navigate_maze
    @beepers = []
    until @beepers.size == 4
      if right_is_clear?
        turn_right
        move
      elsif front_is_clear?
        move
      else
        turn_left
      end

      while next_to_a_beeper?
        pick_beeper
        @beepers << [street, avenue]
      end
    end
  end
end
