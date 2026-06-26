## appelée dès que quelqu'un rejoint l'équipe bleue
# permet de faire rejoindre l'équipe bleu à @s


execute as @s[tag=red_team] run function main:stats/scoreboard/red_team_info/left_red
# enlève @s de la liste des rouges

scoreboard players reset @s red_member
execute as @s[tag=red_team] run function lobby:team_selector/display_team_members/red/remove_member
# enleve le numéro de statue de @s rouge (pour qu'elle puisse etre retirée) et clear sa place de teambarre
execute unless entity @s[tag=blue_team] run function lobby:team_selector/display_team_members/blue/new_member
# permet d'ajouter @s à la liste des statues bleues si pas déjà le cas

scoreboard players set @s team_side 1
tag @s remove red_team
tag @s add blue_team
function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s