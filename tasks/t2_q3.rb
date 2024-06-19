require byebug
def moyenne(matrice)
  sum = matrice.sum
  size = matrice.size

 moy = sum/size
end

moy = moyenne([83,356,575,64,45,5,346,54,33,46,7,2])
puts "La moyenne est: #{moy}"