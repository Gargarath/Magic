## appelée dès que quelqu'un rejoint l'équipe bleue
# permet de faire rejoindre l'équipe bleu à @s


execute as @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/left_blue
# enlève @s de la liste des bleus
execute as @s[tag=red_team] run function main:stats/scoreboard/red_team_info/left_red
# enlève @s de la liste des rouges

execute as @s[tag=blue_team] run scoreboard players reset @s blue_member
execute as @s[tag=blue_team] run function lobby:team_selector/display_team_members/blue/remove_member
execute as @s[tag=red_team] run scoreboard players reset @s red_member
execute as @s[tag=red_team] run function lobby:team_selector/display_team_members/red/remove_member
# nettoie immédiatement les statues et les places de barre de l'équipe quittée

scoreboard players reset @s red_member
scoreboard players reset @s blue_member
# enleve le numéro de statue de @s selon son équipe (pour que la statue puisse etre retirée)

scoreboard players set @s team_side 0
tag @s remove blue_team
tag @s remove red_team

function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s
