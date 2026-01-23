## appelée par main:loop quand @s jump
# permet de faire des actions selon où il est

scoreboard players reset @s is_jumping

execute positioned 0 99 17 if entity @s[distance=..4,tag=!in_podium] at @s if block ~ ~ ~ yellow_carpet run return run function lobby:leaderboard/jump_pads/launch_in
execute positioned 0 99 63 if entity @s[distance=..4,tag=in_podium] at @s if block ~ ~ ~ yellow_carpet run return run function lobby:leaderboard/jump_pads/launch_out

execute positioned 17 99 0 if entity @s[distance=..4,tag=!in_map_display] at @s if block ~ ~ ~ yellow_carpet if score $lobby_maps option_panel matches 0 run return run function lobby:map_island/jump_pads/disabled
execute positioned 17 99 0 if entity @s[distance=..4,tag=!in_map_display] at @s if block ~ ~ ~ yellow_carpet if score $lobby_maps option_panel matches 1 run return run function lobby:map_island/jump_pads/launch_in
execute positioned 69 99 0 if entity @s[distance=..4,tag=in_map_display] at @s if block ~ ~ ~ yellow_carpet run return run function lobby:map_island/jump_pads/launch_out

execute positioned -17 99 0 if entity @s[distance=..4,tag=!in_jump] at @s if block ~ ~ ~ yellow_carpet if score $lobby_jump option_panel matches 0 run return run function lobby:jump/jump_pads/disabled
execute positioned -17 99 0 if entity @s[distance=..4,tag=!in_jump] at @s if block ~ ~ ~ yellow_carpet if score $lobby_jump option_panel matches 1 run return run function lobby:jump/jump_pads/launch_in
execute positioned -77 99 0 if entity @s[distance=..4,tag=in_jump] at @s if block ~ ~ ~ yellow_carpet run return run function lobby:jump/jump_pads/launch_out