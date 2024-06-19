		def valeurs_extremes(hachage)
	  valeurs = hachage.values
	    {max: valeurs.max, min: valeurs.min}
	end

hachage = { rouge: 3, orange: 8, noir: 10 }
resultat = valeurs_extremes(hachage)
puts resultat # {:max=>10, :min=>3}