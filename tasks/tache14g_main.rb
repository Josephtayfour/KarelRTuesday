#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "joseph_robot3"

def task 
    karel = JosephRobot3.new(12, 10, Robota::WEST, 5)
    karel.put_beeper(5)
    karel.pick_beeper(5)
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