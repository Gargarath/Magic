# Called by setup_players/setup_player for FFA players.
# Recolors @s shop room from the player's selected opt_color.

execute if score @s opt_color matches 0 run function main:start_game/make_frameroom_color {terracotta:"white_terracotta",glass:"white_stained_glass"}
execute if score @s opt_color matches 1 run function main:start_game/make_frameroom_color {terracotta:"light_gray_terracotta",glass:"light_gray_stained_glass"}
execute if score @s opt_color matches 2 run function main:start_game/make_frameroom_color {terracotta:"gray_terracotta",glass:"gray_stained_glass"}
execute if score @s opt_color matches 3 run function main:start_game/make_frameroom_color {terracotta:"black_terracotta",glass:"black_stained_glass"}
execute if score @s opt_color matches 4 run function main:start_game/make_frameroom_color {terracotta:"light_blue_terracotta",glass:"light_blue_stained_glass"}
execute if score @s opt_color matches 5 run function main:start_game/make_frameroom_color {terracotta:"cyan_terracotta",glass:"cyan_stained_glass"}
execute if score @s opt_color matches 6..7 run function main:start_game/make_frameroom_blue
execute if score @s opt_color matches 8 run function main:start_game/make_frameroom_color {terracotta:"lime_terracotta",glass:"lime_stained_glass"}
execute if score @s opt_color matches 9 run function main:start_game/make_frameroom_color {terracotta:"green_terracotta",glass:"green_stained_glass"}
execute if score @s opt_color matches 10 run function main:start_game/make_frameroom_color {terracotta:"magenta_terracotta",glass:"magenta_stained_glass"}
execute if score @s opt_color matches 11 run function main:start_game/make_frameroom_color {terracotta:"purple_terracotta",glass:"purple_stained_glass"}
execute if score @s opt_color matches 12..13 run function main:start_game/make_frameroom_red
execute if score @s opt_color matches 14 run function main:start_game/make_frameroom_color {terracotta:"yellow_terracotta",glass:"yellow_stained_glass"}
execute if score @s opt_color matches 15 run function main:start_game/make_frameroom_color {terracotta:"orange_terracotta",glass:"orange_stained_glass"}

execute unless score @s opt_color matches 12..13 run function main:start_game/make_frameroom_default_plants
