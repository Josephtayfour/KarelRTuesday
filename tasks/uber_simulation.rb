require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack.rb"

class UberRobot < UrRobot
  include SensorPack

  def initialize(street, avenue, direction, beepers, world_size)
    super(street, avenue, direction, beepers)
    @world_size = world_size
    @random = Random.new
  end

  def turn_right
    turn_left
    turn_left
    turn_left
  end

  def move_to(street, avenue)
    while @street != street
      if @street < street
        face_north
      elsif @street > street
        face_south
      end
      move
    end

    while @avenue != avenue
      if @avenue < avenue
        face_east
      elsif @avenue > avenue
        face_west
      end
      move
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

  def pickup_passenger
    if next_to_a_beeper?
      pick_beeper
      puts "Passenger picked up at (#{@street}, #{@avenue})!"
    end
  end

  def dropoff_passenger
    put_beeper
    puts "Passenger dropped off at (#{@street}, #{@avenue})!"
  end

  def random_position
    [@random.rand(1..@world_size), @random.rand(1..@world_size)]
  end

  def commence
    pickup_street, pickup_avenue = random_position
    dropoff_street, dropoff_avenue = random_position

    move_to(pickup_street, pickup_avenue)
    pickup_passenger
    move_to(dropoff_street, dropoff_avenue)
    dropoff_passenger
  end
end

# Configuration et utilisation
world_size = 10  # Taille de la grille du monde

# Assurez-vous que le monde est configuré correctement avec suffisamment de place pour les positions aléatoires
robot = UberRobot.new(1, 1, Robota::EAST, 0, world_size)
robot.commence
