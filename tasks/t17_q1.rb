def convert_seconds_to_hours_minutes_seconds(seconds)
  hours = seconds / 3600
  remaining_seconds = seconds % 3600
  minutes = remaining_seconds / 60
  remaining_seconds = remaining_seconds % 60
  return hours, minutes, remaining_seconds
end

puts "Entrez les secondes"
num = gets.chomp.to_i

hours, minutes, seconds = convert_seconds_to_hours_minutes_seconds(num)

puts "#{num} secondes équivaut à #{hours} heures, #{minutes} minutes et #{seconds} secondes"
