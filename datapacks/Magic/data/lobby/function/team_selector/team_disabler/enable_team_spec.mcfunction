## appelée lorsque l'on passe en mode CTF
# permet de redonner l'équipe de @s et de le sortir du mode FFA

scoreboard players operation @s team_side = @s team_side_save

execute if score @s team_side matches 1 run tag @s add blue_spectator
execute if score @s team_side matches 2 run tag @s add red_spectator

tag @s remove no_team
# enlève @s du mode FFA

function lobby:team_selector/give_lobby_team