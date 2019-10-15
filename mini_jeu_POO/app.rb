# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Josiane")
player2 = Player.new("José")

while player1.life_points >0 || player2.life_points >0
    puts " Et voici l'etat de nos GUERRIERS !!!!!"
    puts"-----------------------------------"
    player1.show_state
    player2.show_state
    puts "-----------------------------------"
    puts"3"
    puts"2"
    puts"1"
    puts"FIIIIIGHT"
    player1.attacks(player2)
    player2.attacks(player1)
    break if player1.life_points == 0 || player2.life_points == 0
end





