puts "Entrez un mot :"
mot = gets.chomp 

puts "Entrez une lettre :"
lettre = gets.chomp  

if mot.include?(lettre)
  puts "La lettre '#{lettre}' est présente dans le mot '#{mot}'."
else
  puts "La lettre '#{lettre}' n'est pas présente dans le mot '#{mot}'."
end
