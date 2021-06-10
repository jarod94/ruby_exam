# Ecrire la logique pour que le joueur (vous) entre "0~2".
class Player
  def hand
    # Affiche un texte demandant au joueur de choisir une main pour jouer à pierre-papier-ciseaux.
    puts "Please, entrer le numéro."
    puts "0:Rock", "1:Paper", "2:Scissors"
    # Assignez la valeur d'entrée du joueur à la variable "input_hand".
    # Indice : regardons la méthode "thegets".
    input_hand = gets.chomp
    # Si "input_hand" est l'un de "0, 1, ou 2", le processus d'itération est terminé ; sinon (y compris les caractères alphabétiques), le processus d'itération est poursuivi.
    while true
      # si "input_hand" est l'un de "0, 1, 2".
      # Astuce : consultez la méthode include ?
        if (input_hand == "0") || (input_hand == "1") || (input_hand == "2")
        # Retourner "inputhand" tel quel.
        # Astuce : Si vous voulez retourner la valeur de retour et terminer le processus d'itération, utilisez "return".
        return input_hand.to_i
      # else Autrement.
      else
        # Affiche le texte de "0 à 2" pour que le joueur puisse le saisir.
        # met "Veuillez entrer un nombre entre 0 et 2."
        # puts "0:goo, 1:choki, 2:par"
        puts "Please enter a number between 0 and 2."
        puts "0:Rock", "1:Paper", "2:Scissors"
        # Assignez la valeur d'entrée du joueur à la variable "input_hand".
        input_hand = gets.chomp
      # end if statement end
    end
    end
  end
end
# Ecrire la logique pour que l'adversaire génère aléatoirement une valeur de "0~2".
class Enemy
  def hand
    # Obtenez les valeurs de goo, choki, et par au hasard.
    rand(3)
  end
end
# Ecrire la logique pour que le joueur (vous) entre "0~2" et l'ennemi génère aléatoirement "0~2", jouer à pierre-papier-ciseaux, et afficher le résultat sur la console.
class Janken
  def pon(player_hand, enemy_hand)
    # Assigner ["Goo", "Choki", "Par"] à la variable "janken".
    janken = ["Pierre", "Papier", "Ciseaux"]
    #"Le coup de votre adversaire est #{coups de l'adversaire}. et sortie
    puts "La main de l'adversaire est #{janken[enemy_hand]}."
    # Créez la logique pour jouer à pierre-papier-ciseaux à partir de la valeur de retour de la classe Player et de la valeur de retour de la classe Enemy.
    if player_hand == enemy_hand
# la valeur de retour de la classe Player (player_hand) et la valeur de retour de la classe Enemy (enemy_hand) sont les mêmes.
      # Sortie "Aiko".
      puts "Aiko"
      # renvoie "true" et fait répéter le pierre-papier-ciseaux.
      # Astuce : Vous pouvez utiliser "return" pour renvoyer une valeur de retour. Cependant, en Ruby, il est courant d'omettre "return" lorsqu'on renvoie une valeur de retour.
      return true
      # Si la combinaison des éléments suivants.
      # (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
    elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      #output "you win".
      puts "Vous avez gagné"
      #Retournez "false" et mettez fin au jeu de pierre-papier-ciseaux.
    else
      #Print "Vous avez perdu".
      puts "Vous avez perdu"
      #Retourne "false" et met fin à la partie de pierre-papier-ciseaux.
      return false
    end
  end
end
# Ecrire la logique pour exécuter le jeu pierre-papier-ciseaux.
class GameStart
  # En utilisant self, vous pouvez appeler la méthode jankenpon en utilisant le nom de la classe sans instancier GameStart.
  def self.jankenpon
    # Assigner une instanciation de Player à la variable "player".
    player = Player.new
    # Assigner une instanciation de Enemy à la variable "enemy".
    enemy = Enemy.new
    # Assigner la variable "janken" à celui qui instancie Janken.
    janken = Janken.new
    # Assigner "true" à la variable "next_game".
    next_game = true
    # Si "next_game" est "false", le processus d'itération sera terminé, et si "true", le processus d'itération sera poursuivi.
    while next_game
      # Assignez la valeur retournée par l'exécution de janken (pierre-papier-ciseaux) à la variable "next_game" (valeur de retour).
      # Exécuter pierre-papier-ciseaux avec "janken.pon(player.hand, enemy.hand)".
      next_game = janken.pon(player.hand, enemy.hand)
    end
  end
end
# Appeler la méthode jankenpon avec le nom de la classe.
GameStart.jankenpon
