puts "Quelle quantite en Celsius, voulez vous mettre en Fahrenheit"

celsius = gets.chomp.to_f 

fahrenheit = (celsius * 9/5) + 32

puts "La température en Fahrenheit est : #{fahrenheit}°F"