# appelée par ctf:loop si le temps de recharge du mur de vapeur est terminé
# permet de remettre le bouton de mur de vapeur bleu

setblock -598 162 522 minecraft:stone_button[face=wall,facing=south,powered=false]
# remet le bouton

scoreboard players set blue steam_timer -1
# met le timer du bouton bleu à -1

kill @e[type=text_display,tag=steam_button_blue]
# détruit l'armor_stand qui indique combien de temps il reste