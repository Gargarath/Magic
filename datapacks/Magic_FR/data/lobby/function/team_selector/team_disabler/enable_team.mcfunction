## appelée lorsque l'on passe en mode CTF
# permet de redonner l'équipe de @s et de le sortir du mode FFA

scoreboard players operation @s team_side = @s team_side_save

execute if score @s team_side matches 0 run function lobby:team_selector/join_team/random
execute if score @s team_side matches 1 run function lobby:team_selector/join_team/blue
execute if score @s team_side matches 2 run function lobby:team_selector/join_team/red

tag @s remove no_team

function lobby:team_selector/give_lobby_team