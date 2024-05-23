#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "joseph_robot3"

def task 
    world = Robota::World
    world.read_world("../worlds/labyrinthe.kwld")
    karel = JosephRobot3.new(20, 2, Robota::SOUTH, 0)
    karel.run
  end

if __FILE__ == $0
  if $graphical
     screen = window(20, 70) # (size, speed)
     screen.run do
       task 
     end
   else
     task
   end
end