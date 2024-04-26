#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "joseph_robot"
def task ()
    world = Robota::World
  world.read_world("../worlds/brocoli")
    
    karel = JosephRobot.new(1, 6, Robota::NORTH, 16)
  	karel.move
    karel.fourbeeperspick
    karel.turn_right 
    karel.move
    karel.turn_right 
    karel.move
    karel.threebeeperspick
    karel.turn_left 
    karel.move
    karel.turn_left 
    karel.move 
    karel.twobeeperspick
    karel.turn_right 
    karel.move
    karel.turn_right 
    karel.move
    karel.put_beeper
    karel.move
    karel.move
    karel.move
    karel.turn_right 
    karel.move
    karel.move
    karel.move
    karel.move
    karel.turn_right 
    karel.move 
    karel.threebeeperspick
    karel.turn_left 
    karel.move
    karel.turn_left 
    karel.move 
    karel.twobeeperspick
    karel.turn_right 
    karel.move
    karel.turn_right 
    karel.move
    karel.put_beeper
  end

if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task 
     end
   else
     task
   end
end