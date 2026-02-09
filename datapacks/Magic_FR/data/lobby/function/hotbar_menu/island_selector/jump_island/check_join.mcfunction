## appelée par check_rightclick quand @s veut se tp sur la jump island
# permet de check si @s peut se tp sur la jump island

execute if score $lobby_jump option_panel matches 0 run function lobby:hotbar_menu/island_selector/jump_island/disabled
execute if score $lobby_jump option_panel matches 1 run function lobby:hotbar_menu/island_selector/jump_island/jump_island