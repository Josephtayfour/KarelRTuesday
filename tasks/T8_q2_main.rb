#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "robot_face_nord"
def task ()
   
   
   karel = RobotFaceNord.new(5, 5, 20)
   karel.back_up
   karel.turn_left
   karel.move
   karel.turn_right
   karel.back_up
   karel.turn_left
   karel.move
   karel.turn_right
   karel.back_up
   karel.turn_left
   karel.move
   karel.turn_right
   karel.back_up
   karel.turn_left
   karel.move
   karel.turn_right
   karel.back_up
   karel.turn_left
   karel.move
   turn_right
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