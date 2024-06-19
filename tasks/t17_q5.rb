valeurs = Array.new(200) { rand(0..100) }

somme_paires = valeurs.select { |num| num.even? }.sum

puts "La somme des nombres pairs est : #{somme_paires}"

