def longueurs(matrice)
  somme = 0
  matrice.each do |string|
    somme += string.length
  end
  return somme
end

matrice = ["mot1", "mot5ajsldlfj", "ajbaj3"]
puts longueurs(matrice)