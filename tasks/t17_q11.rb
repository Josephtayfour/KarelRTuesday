puts "Entrez un nombre :"
limite = gets.chomp.to_i  
def nombres_premiers(max)
  premiers = []
  (2..max).each do |num|
    est_premier = true
    (2..Math.sqrt(num).to_i).each do |div|
      if num % div == 0
        est_premier = false
        break
      end
    end
    premiers << num if est_premier
  end
  premiers
end

nombres_premiers = nombres_premiers(limite)
puts "Les nombres premiers jusqu'à #{limite} sont :"
puts nombres_premiers.join(", ")
