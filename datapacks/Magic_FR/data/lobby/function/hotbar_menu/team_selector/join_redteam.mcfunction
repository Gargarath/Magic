execute as @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/left_blue
# enlève @s de la liste des bleus

scoreboard players reset @s blue_member
# enleve le numéro de statue de @s bleue (pour qu'elle puisse etre retirée)

execute unless entity @s[tag=red_team] run function lobby:team_selector/display_team_members/red/new_member
# permet d'ajouter @s à la liste des statues rouges si pas déjà le cas

scoreboard players set @s usespell 0
tag @s remove blue_team
tag @s add red_team
function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s

execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {"text":"Vous avez rejoint l'équipe rouge !","color":"red","bold":false}
function lobby:hotbar_menu/main/give_items