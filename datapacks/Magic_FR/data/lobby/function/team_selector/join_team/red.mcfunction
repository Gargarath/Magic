## appelée dès que quelqu'un rejoint l'équipe rouge
# permet de faire rejoindre l'équipe rouge à @s

execute as @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/left_blue
# enlève @s de la liste des bleus

scoreboard players reset @s blue_member
execute as @s[tag=blue_team] run function lobby:team_selector/display_team_members/blue/remove_member
# enleve le numéro de statue de @s bleue (pour qu'elle puisse etre retirée) et clear sa place de teambarre

execute unless entity @s[tag=red_team] run function lobby:team_selector/display_team_members/red/new_member
# permet d'ajouter @s à la liste des statues rouges si pas déjà le cas

scoreboard players set @s team_side 2
tag @s remove blue_team
tag @s add red_team
function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s
