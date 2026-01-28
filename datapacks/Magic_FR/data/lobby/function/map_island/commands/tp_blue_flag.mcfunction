## appelée par lobby:loop quand @s a utilisé le trigger blue_flag
# permet de tp @s au blue_flag selon la map sur laquelle il se trouve

scoreboard players reset @s blue_flag
scoreboard players enable @s blue_flag

execute if entity @s[tag=spec_map1] run tp @s @e[type=item_display,tag=blue_flag_map_1,limit=1]
execute if entity @s[tag=spec_map2] run tp @s @e[type=item_display,tag=blue_flag_map_2,limit=1]
execute if entity @s[tag=spec_map2] run rotate @s 90 0
execute if entity @s[tag=spec_map3] run tp @s @e[type=item_display,tag=blue_flag_map_3,limit=1]
execute if entity @s[tag=spec_map3] run rotate @s -25 0
execute if entity @s[tag=spec_map4] run tp @s @e[type=item_display,tag=blue_flag_map_4,limit=1]
execute if entity @s[tag=spec_map4] run rotate @s 40 0
execute if entity @s[tag=spec_map5] run tp @s @e[type=item_display,tag=blue_flag_map_5,limit=1]
execute if entity @s[tag=spec_map5] run rotate @s -128 0
execute if entity @s[tag=spec_map6] run tp @s @e[type=item_display,tag=blue_flag_map_6,limit=1]
execute if entity @s[tag=spec_map6] run rotate @s 138 0
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100 1