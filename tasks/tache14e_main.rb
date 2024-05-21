loop do
  # Générer deux nombres aléatoires entre 0 et 50
  num1 = rand(0..50)
  num2 = rand(0..50)

  # Calculer la somme des deux nombres
  correct_sum = num1 + num2

  # Demander à l'utilisateur de deviner la somme
  puts "Quelle est la somme de #{num1} et #{num2} ?"
  print "Votre réponse: "
  user_answer = gets.chomp.to_i

  # Vérifier la réponse de l'utilisateur
  if user_answer == correct_sum
    puts "Correct ! La somme de #{num1} et #{num2} est bien #{correct_sum}."
  else
    puts "Incorrect. La somme de #{num1} et #{num2} est #{correct_sum}, pas #{user_answer}."
  end

  # Demander à l'utilisateur s'il veut jouer à nouveau
  print "Voulez-vous jouer à nouveau ? (oui/non): "
  play_again = gets.chomp.downcase
  break if play_again != "oui"
end

puts "Merci d'avoir joué !"
