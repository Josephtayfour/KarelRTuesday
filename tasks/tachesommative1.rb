require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack.rb"

class Tachesommative1 < UrRobot
  include SensorPack

  def turn_right
    turn_left
    turn_left
    turn_left
  end

  def commence
    loop do
      if next_to_a_beeper?
        pick_beeper
      else
        put_beeper
      end

      if front_is_clear?
        move
      else
        if facing_east?
          turn_left
          if front_is_clear?
            move
            turn_left
          else
            turn_right
            turn_right
          end
        elsif facing_west?
          turn_right
          if front_is_clear?
            move
            turn_right
          else
            turn_left
            turn_left
          end
        elsif facing_north?
          turn_right
          if front_is_clear?
            move
            turn_right
          else
            turn_left
            turn_left
          end
        elsif facing_south?
          turn_left
          if front_is_clear?
            move
            turn_left
          else
            turn_right
            turn_right
          end
        end
      end
      break if all_beepers_picked_up?
    end
  end

  def all_beepers_picked_up?
    false
  end
end
