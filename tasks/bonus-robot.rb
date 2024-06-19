require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack.rb"

class BonusRobot < UrRobot
  include SensorPack

  
  def turn_right
    3.times { turn_left }
  end

  def move_to(street, avenue)
    while self.street != street
      if self.street < street
        face_north
        move
      else
        face_south
        move
      end
    end

    while self.avenue != avenue
      if self.avenue < avenue
        face_east
        move
      else
        face_west
        move
      end
    end
  end

  def face_north
    turn_left until facing_north?
  end

  def face_south
    turn_left until facing_south?
  end

  def face_east
    turn_left until facing_east?
  end

  def face_west
    turn_left until facing_west?
  end

  def collect_and_move_beepers(area_width, area_height, offset_x, offset_y)
    beeper_positions = []

    # Collect beeper positions
    (1..area_height).each do |y|
      (1..area_width).each do |x|
        move_to(y, x)
        while next_to_a_beeper?
          pick_beeper
          beeper_positions << [y, x]
        end
      end
    end

    # Move beepers to new positions
    beeper_positions.each do |pos|
      new_y = pos[0] + offset_y
      new_x = pos[1] + offset_x
      move_to(new_y, new_x)
      put_beeper
    end
  end
end