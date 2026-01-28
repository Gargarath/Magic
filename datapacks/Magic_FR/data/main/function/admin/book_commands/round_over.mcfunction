## appelée par main:loop quand @s a activé le trigger
## permet de terminer la manche actuelle

scoreboard players reset @s admin_round_over
# clear le detecteur d'utilisation du trigger

scoreboard players enable @s admin_round_over
# permet à @s de réutiliser le trigger



execute if score @s InLobby matches 0 if score @s InShop matches 0 run return run function ctf:round_over
# stop cette fonction et lance la fonction pour terminer la manche

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1
tellraw @s {"color":"gray","italic":true,"text":"Cette commande doit être executée pendant la partie."}
# prévient qu'impossible si la fonction n'a pas été annulée plus haut