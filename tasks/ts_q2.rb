puts "Donnez-moi un valeur entre 0-100 svp"
valeur = gets.to_i 

notes = Array.new(200) { rand(1..100) }

puts "Tableau généré :"
puts notes.inspect

supérieures = notes.count { |n| n > valeur }
inférieures = notes.count { |n| n < valeur }
égales = notes.count { |n| n == valeur }

puts "le nombre de valeurs supérieures à #{valeur} sont #{supérieures}"
puts "le nombre de valeurs inférieures à #{valeur} sont #{inférieures}"
puts "le nombre de valeurs égales à #{valeur} sont #{égales}"