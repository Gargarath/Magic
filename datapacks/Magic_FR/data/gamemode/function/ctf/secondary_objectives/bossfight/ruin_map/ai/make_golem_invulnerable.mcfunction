## appelée par bossfight_loop permet de rendre le golem invulnérable

scoreboard players set invulnerable golem 1
execute as @e[type=minecraft:item_display,tag=show_golem_invulnerable] run data merge entity @s {Rotation:[0f,0f],item:{id:"minecraft:barrier",count:1}}
data merge entity @s {Invulnerable:1b}
effect give @s minecraft:regeneration 100 5 true