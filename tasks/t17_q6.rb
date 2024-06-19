valeurs = Array.new(200) { rand(0..100) }

def element_le_plus_frequent(array)
  frequences = Hash.new(0)

  array.each do |nombre|
    frequences[nombre] += 1
  end

  element_frequent = array.max_by { |nombre| frequences[nombre] }
  element_frequent
end


le_plus_frequent = element_le_plus_frequent(valeurs)


puts "L'element le plus frequent est : #{le_plus_frequent}"
