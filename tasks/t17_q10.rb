puts "Donnez-moi une mot"
mot = gets.chomp 

def palindrome(mot)
  mot == mot.reverse 
end

if palindrome(mot)
  puts "Le mot '#{mot}' est un palindrome."
else
  puts "Le mot '#{mot}' n'est pas un palindrome."
end
