puts "# Nombre \tCarré \t\tRacine Carrée"

1.upto(50) do |x|
  carre = x ** 2
  racine_carre = Math.sqrt(x).round(4)
  puts "##{x} \tCarré: #{carre} \t\tRacine Carrée: #{racine_carre}"
end
