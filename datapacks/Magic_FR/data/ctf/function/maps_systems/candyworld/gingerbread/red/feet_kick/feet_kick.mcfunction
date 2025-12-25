## appelée par gingerbread_ready_loop permet de propulser le joueur

tag @s add gingerbread_passenger_red
clone -15 161 -774 -22 170 -781 7 197 -777
# tete devient enervé
clone 3 172 -768 -4 165 -775 9 180 -773
# lève le pied
playsound minecraft:entity.generic.explode master @a 10.00 180.00 -767.04 1 0 0
execute at @s run particle minecraft:explosion ~ ~1 ~ 1 0 1 0 3
summon falling_block 10.1 180 -767.9 {BlockState:{Name:"minecraft:furnace"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[-1.65,1.7,1.14],Tags:["gingerbread_motion","gingerbread_motion_red"]}
scoreboard players set @s is_dead_mounting 0
# met un scoreboard de deathcount à @s qui va l'empecher d'etre tp si il augmente (mort ou hook)

ride @s[scores={is_dead_mounting=0}] mount @e[type=armor_stand,tag=gingerbread_motion_red,limit=1]

scoreboard players set travel_timer_red gingerbread 71