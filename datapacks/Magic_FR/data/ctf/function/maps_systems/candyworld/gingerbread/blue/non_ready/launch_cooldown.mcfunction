## appelée par kick_travel_timer pertmet de reset le passenger et de lancer le cooldown

ride @a[tag=gingerbread_passenger_blue,limit=1,scores={is_dead_mounting=0}] dismount
#fait descendre le passager
tag @a remove gingerbread_passenger_blue
kill @e[type=minecraft:falling_block,tag=gingerbread_motion_blue]
scoreboard players set travel_timer_blue gingerbread -1

summon text_display -46.95 181.40 -709.00 {background:-263237809,NoGravity:1b,billboard:"center",Tags:["gringerbread_cooldown","gringerbread_cooldown_blue"],text:{"bold":true,"text":"En recharge : 10"}}
# invoque un text_display qui indique combien de temps il reste

scoreboard players set cooldown_blue gingerbread 201
clone -30 165 -700 -23 172 -693 -54 180 -712
# baisse le pied