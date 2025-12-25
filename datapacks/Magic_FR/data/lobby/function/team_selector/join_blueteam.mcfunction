
execute as @s[tag=red_team] run function main:stats/scoreboard/red_team_info/left_red
# enlève @s de la liste des rouges

scoreboard players reset @s red_member
# enleve le numéro de statue de @s rouge (pour qu'elle puisse etre retirée)

execute unless entity @s[tag=blue_team] run function lobby:team_selector/display_team_members/blue/new_member
# permet d'ajouter @s à la liste des statues bleues si pas déjà le cas

tag @s remove red_team
tag @s add blue_team
function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {"text":"Vous avez rejoint l'équipe bleue !","color":"blue","bold":false}
function lobby:hotbar_menu/drop_item