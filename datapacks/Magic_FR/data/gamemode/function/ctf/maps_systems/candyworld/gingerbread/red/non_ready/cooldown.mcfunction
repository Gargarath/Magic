## appelée par launch_cooldown

scoreboard players remove cooldown_red gingerbread 1

execute if score cooldown_red gingerbread matches 180 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 9","bold":true}}
execute if score cooldown_red gingerbread matches 160 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 8","bold":true}}
execute if score cooldown_red gingerbread matches 140 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 7","bold":true}}
execute if score cooldown_red gingerbread matches 120 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 6","bold":true}}
execute if score cooldown_red gingerbread matches 200 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 10","bold":true}}
execute if score cooldown_red gingerbread matches 180 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 9","bold":true}}
execute if score cooldown_red gingerbread matches 160 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 8","bold":true}}
execute if score cooldown_red gingerbread matches 140 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 7","bold":true}}
execute if score cooldown_red gingerbread matches 120 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 6","bold":true}}
execute if score cooldown_red gingerbread matches 100 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 5","bold":true}}
execute if score cooldown_red gingerbread matches 80 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 4","bold":true}}
execute if score cooldown_red gingerbread matches 60 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 3","bold":true}}
execute if score cooldown_red gingerbread matches 40 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 2","bold":true}}
execute if score cooldown_red gingerbread matches 20 run data merge entity @e[type=minecraft:text_display,tag=gringerbread_cooldown_red,limit=1] {text:{"text":"En recharge : 1","bold":true}}

execute if score cooldown_red gingerbread matches 0 run function gamemode:ctf/maps_systems/candyworld/gingerbread/red/ready/cooldown_ready