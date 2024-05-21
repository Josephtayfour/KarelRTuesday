#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "joseph_robot2"
def task ()
# a task for a stair sweeper
    world = Robota::World
    world.read_world("../worlds/aleatoire.kwld")
    
    karel = JosephRobot2.new(1, 1, Robota::EAST, 0)
  
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