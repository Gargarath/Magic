## appelée par main:loop quand @s a activé le trigger
## permet de faire randomizer les équipes

scoreboard players reset @s admin_randomize_team
# clear le detecteur d'utilisation du trigger

scoreboard players enable @s admin_randomize_team
# permet à @s de réutiliser le trigger

execute if score $gamemode option_panel matches 0 run return run function main:admin/book_commands/cant_use_in_ffa
# prévient qu'impossible en FFA

execute if score @s InLobby matches 0 run execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1
execute if score @s InLobby matches 0 run tellraw @s {"color":"gray","italic":true,"text":"Cette commande doit être executée dans le lobby."}
# prévient qu'impossible si pas dans le lobby

execute if score @s InLobby matches 1 run function main:admin/randomizeteam/randomize_team
# lance la fonction pour randomizer les équipes