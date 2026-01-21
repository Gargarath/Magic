## appelée par lobby:loop quand @s a utilisé le trigger red_spawn
# permet de tp @s au red_spawn selon la map sur laquelle il se trouve

scoreboard players reset @s red_spawn
scoreboard players enable @s red_spawn

execute if entity @s[tag=spec_map1] run tp @s @e[type=item_display,tag=red_spawn_map_1,limit=1]
execute if entity @s[tag=spec_map1] run rotate @s 180 0
execute if entity @s[tag=spec_map2] run tp @s @e[type=item_display,tag=red_spawn_map_2,limit=1]
execute if entity @s[tag=spec_map2] run rotate @s 0 0
execute if entity @s[tag=spec_map3] run tp @s @e[type=item_display,tag=red_spawn_map_3,limit=1]
execute if entity @s[tag=spec_map3] run rotate @s 90 0
execute if entity @s[tag=spec_map4] run tp @s @e[type=item_display,tag=red_spawn_map_4,limit=1]
execute if entity @s[tag=spec_map4] run rotate @s -130 0
execute if entity @s[tag=spec_map5] run tp @s @e[type=item_display,tag=red_spawn_map_5,limit=1]
execute if entity @s[tag=spec_map5] run rotate @s 20 0
execute if entity @s[tag=spec_map6] run tp @s @e[type=item_display,tag=red_spawn_map_6,limit=1]
execute if entity @s[tag=spec_map6] run rotate @s 0 0