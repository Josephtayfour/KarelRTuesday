def la_somme(matrice)
	somme = matrice.sum
	{somme: somme}
end

matrice = [20, 33, 5, 5333, 434, 3, 2]
resultat = la_somme(matrice)
puts resultat 
