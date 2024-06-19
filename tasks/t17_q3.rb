noms = ["Alice", "Bob", "Charlie", "David", "Emma", "Frank", "Grace", "Henry", "Ivy", "Jack", "Kate", "Liam", "Mia", "Noah", "Olivia", "Peter", "Quinn", "Rachel", "Sam", "Tina"]

loop do
  puts "Entrez un nom à rechercher (ou 'q' pour quitter) :"
  nom = gets.chomp.to_s.strip  

  break if nom.downcase == 'q'
  
  if noms.include?(nom)
    puts "Présent"
  else
    puts "Absent"
  end
end

puts "Programme terminé."
