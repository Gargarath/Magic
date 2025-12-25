
tp @e[tag=golem_waiting_spot] -519 0 -111
kill @e[tag=golem_waiting_spot]
data merge entity @e[type=minecraft:iron_golem,tag=golem,limit=1] {NoAI:1}
execute as @e[type=minecraft:iron_golem,tag=golem] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[type=minecraft:item_display,tag=show_golem_invulnerable] run data merge entity @s {Rotation:[0f,0f],item:{id:"minecraft:barrier",count:1}}