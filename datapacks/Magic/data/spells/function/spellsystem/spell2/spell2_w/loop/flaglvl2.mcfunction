## appelée par loop/detect_cloud si @s est un nuage de niveau 1

execute if score @s timer_rally_flag matches 136 run playsound minecraft:block.bell.use master @a[distance=..20] ~ ~ ~ 100 0
execute if score @s timer_rally_flag matches 132 run playsound minecraft:block.bell.use master @a[distance=..20] ~ ~ ~ 100 1

execute if score @s timer_rally_flag matches 120 run data merge entity @s {CustomName:"6"}
execute if score @s timer_rally_flag matches 100 run data merge entity @s {CustomName:"5"}
execute if score @s timer_rally_flag matches 80 run data merge entity @s {CustomName:"4"}
execute if score @s timer_rally_flag matches 60 run data merge entity @s {CustomName:"3"}
execute if score @s timer_rally_flag matches 40 run data merge entity @s {CustomName:"2"}
execute if score @s timer_rally_flag matches 20 run data merge entity @s {CustomName:"1"}

execute if score @s[tag=blue_rally_flag] timer_rally_flag matches 1.. run particle block{block_state:"minecraft:lapis_block"} ~ ~0.5 ~ 2.5 0 2.5 0.1 10 normal @a
execute if score @s[tag=red_rally_flag] timer_rally_flag matches 1.. run particle block{block_state:"minecraft:redstone_block"} ~ ~0.5 ~ 2.5 0 2.5 0.1 10 normal @a
execute if score @s[type=area_effect_cloud,tag=no_team_rally_flag] timer_rally_flag matches 1.. run particle block{block_state:"minecraft:orange_concrete"} ~ ~0.5 ~ 2.5 0 2.5 0.1 10 normal @a

execute if score @s[tag=blue_rally_flag] timer_rally_flag matches 1.. run effect give @a[distance=..5,team=blue,tag=!spell_immune] minecraft:resistance 1 1 true
execute if score @s[tag=red_rally_flag] timer_rally_flag matches 1.. run effect give @a[distance=..5,team=red,tag=!spell_immune] minecraft:resistance 1 1 true

execute if score @s[type=area_effect_cloud,tag=no_team_rally_flag,tag=rally_flag_1] timer_rally_flag matches 1.. run effect give @a[distance=..5,scores={Player=1},tag=!spell_immune] minecraft:resistance 1 1 true
execute if score @s[type=area_effect_cloud,tag=no_team_rally_flag,tag=rally_flag_2] timer_rally_flag matches 1.. run effect give @a[distance=..5,scores={Player=2},tag=!spell_immune] minecraft:resistance 1 1 true
execute if score @s[type=area_effect_cloud,tag=no_team_rally_flag,tag=rally_flag_3] timer_rally_flag matches 1.. run effect give @a[distance=..5,scores={Player=3},tag=!spell_immune] minecraft:resistance 1 1 true
execute if score @s[type=area_effect_cloud,tag=no_team_rally_flag,tag=rally_flag_4] timer_rally_flag matches 1.. run effect give @a[distance=..5,scores={Player=4},tag=!spell_immune] minecraft:resistance 1 1 true
execute if score @s[type=area_effect_cloud,tag=no_team_rally_flag,tag=rally_flag_5] timer_rally_flag matches 1.. run effect give @a[distance=..5,scores={Player=5},tag=!spell_immune] minecraft:resistance 1 1 true
execute if score @s[type=area_effect_cloud,tag=no_team_rally_flag,tag=rally_flag_6] timer_rally_flag matches 1.. run effect give @a[distance=..5,scores={Player=6},tag=!spell_immune] minecraft:resistance 1 1 true
execute if score @s[type=area_effect_cloud,tag=no_team_rally_flag,tag=rally_flag_7] timer_rally_flag matches 1.. run effect give @a[distance=..5,scores={Player=7},tag=!spell_immune] minecraft:resistance 1 1 true
execute if score @s[type=area_effect_cloud,tag=no_team_rally_flag,tag=rally_flag_8] timer_rally_flag matches 1.. run effect give @a[distance=..5,scores={Player=8},tag=!spell_immune] minecraft:resistance 1 1 true
execute if score @s[type=area_effect_cloud,tag=no_team_rally_flag,tag=rally_flag_9] timer_rally_flag matches 1.. run effect give @a[distance=..5,scores={Player=9},tag=!spell_immune] minecraft:resistance 1 1 true
execute if score @s[type=area_effect_cloud,tag=no_team_rally_flag,tag=rally_flag_10] timer_rally_flag matches 1.. run effect give @a[distance=..5,scores={Player=10},tag=!spell_immune] minecraft:resistance 1 1 true
execute if score @s[type=area_effect_cloud,tag=no_team_rally_flag,tag=rally_flag_11] timer_rally_flag matches 1.. run effect give @a[distance=..5,scores={Player=11},tag=!spell_immune] minecraft:resistance 1 1 true
execute if score @s[type=area_effect_cloud,tag=no_team_rally_flag,tag=rally_flag_12] timer_rally_flag matches 1.. run effect give @a[distance=..5,scores={Player=12},tag=!spell_immune] minecraft:resistance 1 1 true

execute if score @s timer_rally_flag matches 0 run kill @s