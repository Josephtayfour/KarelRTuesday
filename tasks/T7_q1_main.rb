#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "joseph_robot"
def task ()
    world = Robota::World
  world.read_world("../worlds/worldtache7")
    
    karel = JosephRobot.new(11, 2, Robota::SOUTH, 20)
  	karel.place10
    karel.turn_left
    karel.place10
    karel.turn_left
    karel.place10
    karel.turn_left
    karel.place10
    karel.turn_left
   end

if __FILE__ == $0
  if $graphical
     screen = window(14, 40) # (size, speed)
     screen.run do
       task 
     end
   else
     task
   end
end