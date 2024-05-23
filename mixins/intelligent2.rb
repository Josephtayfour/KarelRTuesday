#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

=begin
 The beginnings of a student defined module to be mixed in to other classes to provide
 auxiliary methods that are generally useful.  
=end
module Intelligent2
  def run
    while no_beepers_present?
      follow_wall_right
    end
  end
  def turn_right
    turn_left
    turn_left
    turn_left
  end
  def follow_wall_right
    if right_is_clear?
      turn_right
      move
    elsif front_is_clear?
      move
    else
      turn_left
    end
  end  
end