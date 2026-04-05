# appelée par ctf:loop si le temps de recharge du mur de vapeur est terminé
# permet de remettre le bouton de mur de vapeur rouge

setblock -598 162 477 minecraft:stone_button[face=wall,facing=north,powered=false]
# remet le bouton

scoreboard players set red steam_timer -1
# met le timer du bouton rouge à -1

kill @e[type=text_display,tag=steam_button_red]
# détruit l'armor_stand qui indique combien de temps il reste