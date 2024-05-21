class Karel
  # Méthode pour exécuter une liste de commandes
  def execute_commands(commandes)
    commandes.each do |commande|
      send(commande)
    end
  end
  
  # Méthodes de base de Karel
  def move
    # Implémentation du déplacement
    puts "Karel se déplace d'une case en avant."
  end

  def turn_left
    # Implémentation de tourner à gauche
    puts "Karel tourne à gauche."
  end

  def put_beeper
    # Implémentation de déposer un beeper
    puts "Karel dépose un beeper."
  end

  # Autres méthodes possibles...
end

# Liste des commandes à exécuter
commandes = %w[move move move move move move move turn_left turn_left turn_left move move move put_beeper]

# Créer une instance de Karel et exécuter les commandes
karel = Karel.new
karel.execute_commands(commandes)
