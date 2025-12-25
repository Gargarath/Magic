## appelée par kick_travel_timer pertmet de reset le passenger et de lancer le cooldown

ride @a[tag=gingerbread_passenger_red,limit=1,scores={is_dead_mounting=0}] dismount
#fait descendre le passager
tag @a remove gingerbread_passenger_red
kill @e[type=minecraft:falling_block,tag=gingerbread_motion_red]
scoreboard players set travel_timer_red gingerbread -1

summon text_display 9.90 181.40 -768.00 {background:-263237809,NoGravity:1b,billboard:"center",Tags:["gringerbread_cooldown","gringerbread_cooldown_red"],text:{"bold":true,"text":"En recharge : 10"}}
# invoque un text_display qui indique combien de temps il reste

scoreboard players set cooldown_red gingerbread 201
clone -8 172 -778 -15 165 -785 9 180 -773
# baisse le pied