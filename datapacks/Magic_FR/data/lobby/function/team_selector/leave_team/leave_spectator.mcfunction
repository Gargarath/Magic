## appelée dès que quelqu'un quitte l'équipe spectateur
# permet de faire quitter l'équipe spectateur à @s

tag @s remove spell_immune

tag @s[tag=blue_spectator] add blue_team
tag @s[tag=red_spectator] add red_team
tag @s remove red_spectator
tag @s remove blue_spectator
tag @s remove spectator


execute if score $gamemode option_panel matches 0 run tag @s add no_team
# si en FFA -> indique @s comme no_team

function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s

scoreboard players set @s Player 0


execute if entity @s[tag=!blue_team,tag=!red_team] run scoreboard players set @s team_side 0
execute if entity @s[tag=blue_team] run scoreboard players set @s team_side 1
execute if entity @s[tag=red_team] run scoreboard players set @s team_side 2


execute if entity @s[tag=blue_team] run function lobby:team_selector/display_team_members/blue/new_member
# si @s est bleu -> le rajoute aux statues
execute if entity @s[tag=red_team] run function lobby:team_selector/display_team_members/red/new_member
# si @s est rouge -> le rajoute aux statues