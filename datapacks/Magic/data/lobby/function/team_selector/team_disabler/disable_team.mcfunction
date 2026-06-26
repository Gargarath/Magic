## appelée lorsque l'on passe en mode FFA
# permet de save l'équipe de @s et de le mettre en mode FFA

scoreboard players set $gamemode option_panel 0

scoreboard players operation @s team_side_save = @s team_side

function lobby:team_selector/join_team/random
# rend @s sans équipe

tag @s[tag=!in_lobby_arena] add no_team
scoreboard players set @s team_side 0
# rend @s en mode FFA
execute as @a[tag=no_team,scores={InLobby=1,Player=0..}] unless score @s ffa_lobby_slot matches 1.. run function lobby:team_selector/give_ffa_lobby_team/assign_slot
execute as @a[tag=no_team,scores={InLobby=1,Player=0..,ffa_lobby_slot=1..}] run function lobby:team_selector/give_ffa_lobby_team/refresh_slot

execute if score @s[tag=!in_lobby_arena] hotbar_menu matches 0 run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s[tag=!in_lobby_arena] hotbar_menu matches 2 run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
# si a une option de modif d'équipe -> refresh son inventaire