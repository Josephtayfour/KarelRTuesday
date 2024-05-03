#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "mainnoel"
require_relative "../karel/robota"

def task ()
# a task for a stair sweeper
    world = Robota::World
    world.read_world("../worlds/grinch.kwld")
    
    karel = MainNoel.new(12, 10, Robota::WEST, 0)
  	karel.goin
    karel.out
    karel.between 
    karel.goin
    karel.out
    karel.between
    karel.goin
    karel.out
    karel.between
    karel.bigstep
    karel.goin
    karel.out
    karel.between 
    karel.goin
    karel.out
    karel.between
    karel.goin
    karel.out
    karel.between
    karel.bigstep2
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