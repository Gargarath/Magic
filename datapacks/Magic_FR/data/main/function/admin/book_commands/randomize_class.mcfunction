## appelée par main:loop quand @s a activé le trigger
## permet de faire randomizer les classes

scoreboard players reset @s admin_randomize_class
# clear le detecteur d'utilisation du trigger

scoreboard players enable @s admin_randomize_class
# permet à @s de réutiliser le trigger


execute if score @s InLobby matches 0 at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1
execute if score @s InLobby matches 0 run return run tellraw @s {"color":"gray","italic":true,"text":"Cette commande doit être executée dans le lobby."}
# prévient qu'impossible si pas dans le lobby

execute if score $gamemode option_panel matches 0 run return run function main:admin/randomize_class/randomize_classes_ffa
execute if score $gamemode option_panel matches 1 run return run function main:admin/randomize_class/randomize_classes_ctf
# lance la fonction pour randomizer les classes
