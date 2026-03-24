## appelée par lobby:loop quand @s rejoint un bloc de slime
# permet d'activer le pad

tag @s add on_pads

execute positioned 0 99 17 if entity @s[distance=..4,tag=!in_podium] run return run function lobby:leaderboard/jump_pads/launch_in
execute positioned 0 98 61 if entity @s[distance=..4,tag=in_podium] run return run function lobby:leaderboard/jump_pads/launch_out

execute positioned 17 99 0 if entity @s[distance=..4,tag=!in_map_display] if score $lobby_maps option_panel matches 0 run return run function lobby:map_island/jump_pads/disabled
execute positioned 17 99 0 if entity @s[distance=..4,tag=!in_map_display] if score $lobby_maps option_panel matches 1 run return run function lobby:map_island/jump_pads/launch_in
execute positioned 71 99 0 if entity @s[distance=..4,tag=in_map_display] run return run function lobby:map_island/jump_pads/launch_out

execute positioned -17 99 0 if entity @s[distance=..4,tag=!in_jump] if score $lobby_jump option_panel matches 0 run return run function lobby:jump/jump_pads/disabled
execute positioned -17 99 0 if entity @s[distance=..4,tag=!in_jump] if score $lobby_jump option_panel matches 1 run return run function lobby:jump/jump_pads/launch_in
execute positioned -77 99 0 if entity @s[distance=..4,tag=in_jump] run return run function lobby:jump/jump_pads/launch_out
