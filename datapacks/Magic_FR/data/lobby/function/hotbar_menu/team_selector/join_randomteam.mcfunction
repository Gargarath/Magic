execute as @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/left_blue
# enlève @s de la liste des bleus
execute as @s[tag=red_team] run function main:stats/scoreboard/red_team_info/left_red
# enlève @s de la liste des rouges

scoreboard players reset @s red_member
scoreboard players reset @s blue_member
# enleve le numéro de statue de @s bleue (pour qu'elle puisse etre retirée)

scoreboard players set @s usespell 0
team join lobby @s[tag=!warrior,tag=!archer,tag=!mage,tag=!rogue]
tag @s remove blue_team
tag @s remove red_team
function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {"text":"Votre équipe sera choisie aléatoirement !","color":"light_purple","bold":false}
execute if score @s hotbar_menu matches 0 run function lobby:hotbar_menu/main/give_items
execute if score @s hotbar_menu matches 2 run function lobby:hotbar_menu/main/give_items
# si @s est dans la selection d'équipe ou dans le menu principal -> le met dans le menu principal avec la bonne classe