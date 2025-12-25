# Appellée par ctf:loop permet d'afficher 1 à l'écran pour faire un chargement de début de partie
#title @a title {"text":"1","color":"dark_red"}

execute as @e[tag=start_countdown] run data merge entity @s {text:{"color":"dark_red","text":"1"}}
function main:launch_arena/countdown/animation_up
# fait l'animation du numéro

execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0


execute at @e[tag=Spot_Red_flag] run summon armor_stand ~ ~2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Red_flag"],DisabledSlots:4144959}
execute at @e[tag=Spot_Red_flag] run summon armor_stand ~ ~0.23 ~0.2 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Red_banner"],Pose:{Body:[-90f,0f,0f]},DisabledSlots:4144959,equipment:{head:{id:"minecraft:red_banner",count:1,components:{"minecraft:custom_model_data":{strings:["Red_flag"]}}}}}
execute at @e[tag=Spot_Blue_flag] run summon armor_stand ~ ~2 ~ {NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["Blue_flag"],DisabledSlots:4144959}
execute at @e[tag=Spot_Blue_flag] run summon armor_stand ~ ~0.23 ~0.2 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Blue_banner"],Pose:{Body:[-90f,0f,0f]},DisabledSlots:4144959,equipment:{head:{id:"minecraft:blue_banner",count:1,components:{"minecraft:custom_model_data":{strings:["Blue_flag"]}}}}}
# spawn les drapeaux

schedule function main:launch_arena/countdown/timer_end 1s
# fini le décompte