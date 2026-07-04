# appelé main:end_game\gamemode\ffa quand la game se fini
# Commande qui permet de reset tout ce qui est lié au FFA

scoreboard players set ffa enable_loop 0
scoreboard players set shop enable_loop 0
# désactiver le ffa

scoreboard objectives setdisplay sidebar

schedule clear gamemode:ffa/money_distribution/increase_player_money
# enlève la boucle d'argent passive sur les joueurs