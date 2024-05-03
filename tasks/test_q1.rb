#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "ClocheTest"
def task 
  karel = ClocheTest.new(1, 6, NORTH, 26)
  karel.verticalput
  karel.horizontalput 
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