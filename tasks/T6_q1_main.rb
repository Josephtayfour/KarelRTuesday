#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "joseph_robot"
def task ()
# a task for a stair sweeper
    world = Robota::World
##  world.read_world("../worlds/Joseph")
    
    karel = JosephRobot.new(5, 2, Robota::EAST, 10)
  	karel.fourbeepers
    karel.turn_right 
    karel.move
    karel.turn_right 
    karel.move
    karel.threebeepers 
    karel.turn_left 
    karel.move
    karel.turn_left 
    karel.move 
    karel.twobeepers
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