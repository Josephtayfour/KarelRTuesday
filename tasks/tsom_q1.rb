def compter_lettres(phrase)
  compte = Hash.new(0)
    phrase.downcase.each_char do |char|
    compte[char] += 1 if char.match?(/[a-z]/)
  end

  compte
end

puts "Entrez une phrase ou une mot:"
phrase = gets.chomp

compte_lettres = compter_lettres(phrase)
puts "Compte des lettres :"
puts compte_lettres
