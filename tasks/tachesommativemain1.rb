#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "tachesommative1"

def task 
    world = Robota::World
    world.read_world("../worlds/toit.kwld")
    karel = Tachesommative1.new(20, 2, Robota::SOUTH, 0)
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