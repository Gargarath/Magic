## appelée par launch_game si on est en FFA
# donne la bonne classe aux joueurs qui n'ont pas encore leur classes

execute as @a[scores={class_id=0,Player=0}] run function lobby:check_game_startable/ffa/assign_class

execute if score $force_launch option_panel matches 1 run return run function main:start_game/start_game
execute if score player playercount matches 2..12 run return run function main:start_game/start_game
execute if score player playercount matches 1 run return run function lobby:cant_start/need_at_least_two_players with entity @s EnderItems[0].components.minecraft:custom_data
execute if score player playercount matches 13.. run return run function lobby:cant_start/toomanyplayers with entity @s EnderItems[0].components.minecraft:custom_data
