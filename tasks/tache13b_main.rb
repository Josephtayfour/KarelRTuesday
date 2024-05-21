hachage = {"val0"=>55, "val1"=>323, "val2"=>38, "val3"=>99, "val4"=>64, "val5"=>75, "val6"=>32, "val7"=>53, "val8"=>7, "val9"=>1 }
puts "q3: #{hachage.has_value?(6)}"  
puts hachage["val7"]
# Extraire les valeurs des clés "val4" et "val9"
valeur_val4 = hachage["val4"]
valeur_val9 = hachage["val9"]

# Calculer la somme des deux valeurs
somme = valeur_val4 + valeur_val9

# Afficher la somme
puts "La somme des valeurs aux clés 'val4' et 'val9' est #{somme}" 