valeurs = Array.new(50) { rand(0..100) }
puts "Tableau généré :"
p valeurs 

def deuxieme_plus_grand(arr)
  valeursuniq = arr.uniq.sort.reverse
  valeursuniq[2]
end

second = deuxieme_plus_grand(valeurs)
puts "Le deuxième plus grand élément du tableau est : #{second}"
