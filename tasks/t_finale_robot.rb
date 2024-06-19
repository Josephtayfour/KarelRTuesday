require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack.rb"

class TFinaleRobot < UrRobot
  include SensorPack

  def turn_right
    3.times { turn_left }
  end

  def centquatrevent
    turn_left
    turn_left
  end

    def execute
	  puts "Combien de colonnes est-ce que vous voulez ?"
	  num = gets.chomp.to_i
	  puts "Vous avez demandé #{num} colonnes. Retournez au monde, s'il vous plaît."

	  x = 1
	  y = 0

	  13.times do
	    12.times do
	      while next_to_a_beeper?
	        pick_beeper
	        y += 1
	      end
	      move if front_is_clear?
	    end
	    centquatrevent
	    12.times { move }
	    turn_right
	    move
	    turn_right
	  end

	  turn_right
	  13.times { move }
	  centquatrevent

	  redistribuer_beepers(num, y)
	end

	def redistribuer_beepers(num, y)
	  x = 1

	  until y.zero?
	    until x > num
	      x.times do
	        if y > 0
	          put_beeper
	          y -= 1
	        end
	        move
	      end
	      centquatrevent
	      x.times { move }
	      turn_left
	      move
	      turn_left
	      x += 1
	    end
	  end
	end
end
