## appelée lorsque l'on passe en mode FFA
# permet de save l'équipe de @s et de le mettre en mode FFA

scoreboard players operation @s team_side_save = @s team_side

function lobby:team_selector/join_team/random
# rend @s sans équipe

tag @s add no_team
scoreboard players reset @s team_side
# rend @s en mode FFA

function lobby:team_selector/give_lobby_team