## appelée par main:loop quand @s a activé le trigger
## permet de faire quitter le rôle de modérateur à @s

scoreboard players reset @s admin_quit_admin
# clear le detecteur d'utilisation du trigger

scoreboard players enable @s admin_quit_admin
# permet à @s de réutiliser le trigger

execute if score @s InLobby matches 0 at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 1
$execute if score @s InLobby matches 0 run tellraw @s {"color":"gray","italic":true,"text":"$(tr_admin_command_must_be_in_lobby)"}
# prévient qu'impossible si pas dans le lobby

execute if score @s InLobby matches 1 run function lobby:operator/leave_op with entity @s EnderItems[0].components.minecraft:custom_data
# lance la fonction pour quitter le rôle de modérateur