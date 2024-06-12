puts "Donnez-moi cinq valeurs numerique svp"
	valeurs = 5.times.map do
  print "Entrez une valeur numérique : "
  gets.chomp.to_i
end

puts "Les valeurs numerique en ordre croissant sont le suivant:"
puts valeurs.sort