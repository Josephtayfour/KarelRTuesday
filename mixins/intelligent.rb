#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

=begin
 The beginnings of a student defined module to be mixed in to other classes to provide
 auxiliary methods that are generally useful.  
=end
module Intelligent

  # Turn right by executing three turn left actions
  def move(fois = 1)
    fois.times do 
      super()
    end
  end

  def pick_beeper(fois = 1)
      fois.times do 
        super()
      end
  end
  def put_beeper(fois = 1)
      fois.times do 
        super()
      end
  end
end