## appelée par main:loop quand @s a activé le trigger
## permet de forcer les joueurs à être prêts

scoreboard players reset @s admin_all_ready
# clear le detecteur d'utilisation du trigger

scoreboard players enable @s admin_all_ready
# permet à @s de réutiliser le trigger

execute if score $gamemode option_panel matches 0 run return run function main:admin/book_commands/cant_use_in_ffa
# prévient qu'impossible en FFA

execute if score @s InShop matches 0 at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1
execute if score @s InShop matches 0 run tellraw @s {"color":"gray","italic":true,"text":"Cette commande doit être executée dans les salles d'achat."}
# prévient qu'impossible si pas dans le lobby

execute if score @s InShop matches 1 run function main:launch_arena/all_ready
# lance la fonction d'arrêt de game