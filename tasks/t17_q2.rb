# Générer un tableau de 200 notes aléatoires entre 20 et 100
notes = Array.new(200) { rand(20..100) }

# Calculer la moyenne des notes
average = notes.sum / notes.size.to_f

# Trouver la note la plus basse
lowest = notes.min

# Trouver la note la plus élevée
highest = notes.max

# Afficher les résultats
puts "Moyenne des notes : #{average.round(2)}"
puts "Note la plus basse : #{lowest}"
puts "Note la plus élevée : #{highest}"
