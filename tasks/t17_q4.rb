# Tableau des utilisateurs et de leurs mots de passe
utilisateurs = {
  "user1" => "password1",
  "user2" => "password2",
  "user3" => "password3",
  "user4" => "password4",
  "user5" => "password5",
  "user6" => "password6",
  "user7" => "password7",
  "user8" => "password8",
  "user9" => "password9",
  "user10" => "password10",
  "user11" => "password11",
  "user12" => "password12",
  "user13" => "password13",
  "user14" => "password14",
  "user15" => "password15",
  "user16" => "password16",
  "user17" => "password17",
  "user18" => "password18",
  "user19" => "password19",
  "user20" => "password20"
}

puts "Entrez votre nom d'utilisateur :"
username = gets.chomp

if utilisateurs.key?(username)

  puts "Entrez votre mot de passe :"
  password = gets.chomp

  if utilisateurs[username] == password
    puts "Accès autorisé"
  else
    puts "Accès refusé"
  end
else
  puts "Accès refusé"
end
