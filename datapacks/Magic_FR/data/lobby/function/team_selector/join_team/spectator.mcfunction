## appelée dès que quelqu'un rejoint l'équipe spectateur
# permet de faire rejoindre l'équipe spectateur à @s

execute as @s[tag=blue_team] run function main:stats/scoreboard/blue_team_info/left_blue
# enlève @s de la liste des bleus
execute as @s[tag=red_team] run function main:stats/scoreboard/red_team_info/left_red
# enlève @s de la liste des rouges

scoreboard players reset @s red_member
scoreboard players reset @s blue_member
# enleve le numéro de statue de @s selon son équipe (pour que la statue puisse etre retirée)

scoreboard players set @s Player -1

tag @s add spell_immune
tag @s[tag=!blue_team,tag=!red_team] add spectator
tag @s[tag=blue_team] add blue_spectator
tag @s[tag=red_team] add red_spectator
tag @s remove blue_team
tag @s remove red_team

function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s