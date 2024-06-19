#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "bonus-robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
 world.read_world("../worlds/bouger.kwld")
  karel = BonusRobot.new(1, 1, Robota::EAST, 0)
  karel.collect_and_move_beepers(area_width, area_height, offset_x, offset_y)
  karel.turn_off
end
if __FILE__ == $0
  if $graphical
     screen = window(20, 100) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end