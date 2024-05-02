#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "deux_bloc_robot"
def task ()
   

   karel = DeuxBlocRobot.new(5, 2, Robota::SOUTH, 20)
   karel.move
   karel.move
   karel.turn_left
   karel.move
   karel.move
   karel.turn_left
   karel.move
   karel.move
   karel.turn_left
   karel.move 
   karel.move 
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