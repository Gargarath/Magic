# appelé main:end_game\gamemode\ffa quand la game se fini
# Commande qui permet de reset tout ce qui est lié au FFA

scoreboard players set ffa enable_loop 0
# désactiver le ffa

scoreboard objectives setdisplay sidebar

team modify player1 nametagVisibility never
team modify player2 nametagVisibility never
team modify player3 nametagVisibility never
team modify player4 nametagVisibility never
team modify player5 nametagVisibility never
team modify player6 nametagVisibility never
team modify player7 nametagVisibility never
team modify player8 nametagVisibility never
team modify player9 nametagVisibility never
team modify player10 nametagVisibility never
team modify player11 nametagVisibility never
team modify player12 nametagVisibility never

schedule clear gamemode:ffa/money_distribution/increase_player_money
# enlève la boucle d'argent passive sur les joueurs