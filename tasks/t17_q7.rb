valeurs = (1..100).to_a
valeurs.delete_at(rand(0..99))

def entier_manquant(array)

  somme_attendue = (100 * (100 + 1)) / 2

  somme_actuelle = array.sum

  manquant = somme_attendue - somme_actuelle

  return manquant
end

manquant = entier_manquant(valeurs)
puts "L'entier manquant dans la liste est : #{manquant}"
