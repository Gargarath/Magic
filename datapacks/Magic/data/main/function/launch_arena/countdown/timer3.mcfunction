# Appellée par ctf:loop permet d'afficher 3 à l'écran pour faire un chargement de début de partie

scoreboard players reset $enable_game_countdown timers

title @a times 4 13 3
title @a title [{"text":"\uE780"},{"text":"3","color":"#01FE02"},{"text":"\uE781"}]
# La couleur technique est convertie en vert et animée par text.vsh.
execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0

execute at @e[tag=Spot_Red_flag] run summon armor_stand ~ ~2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Red_flag"],DisabledSlots:4144959}
execute at @e[tag=Spot_Red_flag] run summon armor_stand ~ ~0.23 ~0.2 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Red_banner"],Pose:{Body:[-90f,0f,0f]},DisabledSlots:4144959,equipment:{head:{id:"minecraft:red_banner",count:1,components:{"minecraft:custom_model_data":{strings:["Red_flag"]}}}}}
execute at @e[tag=Spot_Blue_flag] run summon armor_stand ~ ~2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Blue_flag"],DisabledSlots:4144959}
execute at @e[tag=Spot_Blue_flag] run summon armor_stand ~ ~0.23 ~0.2 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Blue_banner"],Pose:{Body:[-90f,0f,0f]},DisabledSlots:4144959,equipment:{head:{id:"minecraft:blue_banner",count:1,components:{"minecraft:custom_model_data":{strings:["Blue_flag"]}}}}}
# spawn les drapeaux

execute as @e[type=armor_stand,tag=Blue_flag,limit=1] run function gamemode:ctf/locator_bar_flags/flag_blue_base
execute as @e[type=armor_stand,tag=Red_flag,limit=1] run function gamemode:ctf/locator_bar_flags/flag_red_base

schedule function main:launch_arena/countdown/timer2 1s
# continu le décompte
