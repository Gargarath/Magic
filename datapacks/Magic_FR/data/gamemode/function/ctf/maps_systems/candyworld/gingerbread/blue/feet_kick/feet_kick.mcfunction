## appelée par gingerbread_ready_loop permet de propulser le joueur

tag @s add gingerbread_passenger_blue
clone -23 141 -704 -16 150 -697 -52 177 -708
# tete devient enervé
clone -41 145 -710 -34 152 -703 -54 160 -712
# lève le pied
playsound minecraft:entity.generic.explode master @a -47.23 160.00 -708.85 1 0 0
execute at @s run particle minecraft:explosion ~ ~1 ~ 1 0 1 0 3

summon falling_block -47.1 160 -709.1 {BlockState:{Name:"minecraft:furnace"},Time:1,DropItem:0b,HurtEntities:0b,Motion:[1.65,1.7,-1.14],Tags:["gingerbread_motion","gingerbread_motion_blue"]}

scoreboard players set @s is_dead_mounting 0
# met un scoreboard de deathcount à @s qui va l'empecher d'etre tp si il augmente (mort ou hook)

ride @s[scores={is_dead_mounting=0}] mount @e[type=falling_block,tag=gingerbread_motion_blue,limit=1]

scoreboard players set travel_timer_blue gingerbread 71