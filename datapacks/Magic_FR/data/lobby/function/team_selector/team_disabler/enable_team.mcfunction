## appelée lorsque l'on passe en mode CTF
# permet de redonner l'équipe de @s et de le sortir du mode FFA

scoreboard players operation @s team_side = @s team_side_save

execute if score @s team_side matches 0 run function lobby:team_selector/join_team/random
execute if score @s team_side matches 1 run function lobby:team_selector/join_team/blue
execute if score @s team_side matches 2 run function lobby:team_selector/join_team/red

tag @s[tag=!in_lobby_arena] remove no_team

function lobby:team_selector/give_ffa_lobby_team/remove_ffa_team
# enlève le slot d'équipe de lobby ffa de @s

execute if score @s[tag=!in_lobby_arena] hotbar_menu matches 0 run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[tag=!in_lobby_arena] hotbar_menu matches 6..8 run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# si a une option de modif de couleur -> refresh son inventaire