## appelée par check_rightclick quand @s veut se tp sur la map island
# permet de check si @s peut se tp sur la map island

execute if score $lobby_maps option_panel matches 0 run function lobby:hotbar_menu/island_selector/map_island/disabled
execute if score $lobby_maps option_panel matches 1 run function lobby:hotbar_menu/island_selector/map_island/map_island