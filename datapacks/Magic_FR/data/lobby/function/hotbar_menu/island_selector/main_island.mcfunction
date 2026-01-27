## appelée par check_rightclick quand @s veut se tp sur la main island
# permet de tp @s sur la main island

function lobby:hotbar_menu/main/give_items
# remet la page principale

tag @s[tag=in_podium] remove in_podium
# si @s était dans la zone de stats -> l'enlève
execute if entity @s[tag=in_map_display] run function lobby:map_island/quit_maps
# si @s était dans la zone de map -> l'enlève
execute if entity @s[tag=in_jump] run function lobby:jump/quit_jump
# si @s était dans le jump -> l'enlève

tp @s 0 100 0 180 0
# tp @s sur l'île principale

execute at @s run playsound minecraft:entity.player.teleport master @s ~ ~ ~ 1 1
execute at @s run particle minecraft:dust_color_transition{from_color:[0.55,0.1,0.75],to_color:[0.05,0.0,0.1],scale:1.5} ~ ~1 ~ 0.2 0.3 0.2 2 5