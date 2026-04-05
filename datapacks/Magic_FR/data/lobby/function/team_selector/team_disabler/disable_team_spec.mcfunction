## appelée lorsque l'on passe en mode FFA
# permet de save l'équipe de @s et de le mettre en mode FFA

scoreboard players operation @s team_side_save = @s team_side

tag @s add spectator
tag @s remove blue_spectator
tag @s remove red_spectator

tag @s add no_team
# rend @s en mode FFA

function lobby:team_selector/give_lobby_team