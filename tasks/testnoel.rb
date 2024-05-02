#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "mainnoel"
def task ()
# a task for a stair sweeper
    world = Robota::World
    world.read_world("../worlds/Grinch.kwld")
    
    karel = MainNoel.new(12, 10, Robota::WEST, 0)
  	karel.goin
    karel.out
    karel.between 
    karel.going
    karel.out
    karel.between
    karel.going
    karel.out
    karel.between
    karel.bigstep
    karel.going
    karel.out
    karel.between 
    karel.going
    karel.out
    karel.between
    karel.going
    karel.out
    karel.between
    karel.bigstep
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