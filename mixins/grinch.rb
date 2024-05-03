#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

=begin
 The beginnings of a student defined module to be mixed in to other classes to provide
 auxiliary methods that are generally useful.  
=end
module Turner

  # Turn right by executing three turn left actions
  def turn_right
    turn_left
    turn_left
    turn_left
  end
  
  # Turn around by executing two turn left actions
  def turn_around
    turn_left
    turn_left
  end
  
  # Back up by turning around, moving and again turning around. Robot
  # will be left facing the original direction. Might fail if there is 
  # a wall immediately behind the robot at the start. 
  def back_up
    turn_around
    move
    turn_around
  end

  def place10 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
    put_beeper
    move 
  end 

  def place90degree
    put_beeper
    turn_right
    move 
    put_beeper
    move 
    put_beeper
    turn_left 
    move 
    put_beeper 
    move 
    but_beeper
    turn_right 
    move
    put_beeper
  end
  
   def bigstep2
        turn_right 
        turn_right 
        move
        move
        move 
        move
        move
        move 
        move
        move
        move 
        move
        turn_right
        move
        move
        move
        turn_left
        move
        turn_right
        move
        move
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
    end
end