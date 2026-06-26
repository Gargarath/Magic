## appelée par bossfight_loop si il y a au moins un joueur dans l'église et que la liche n'est encore invulnerable
## enlève l'invulnérabilité de la liche

data merge entity @s {Invulnerable:1b}
scoreboard players set invulnerable lich 1
execute as @e[type=minecraft:item_display,tag=show_lich_invulnerable] run data merge entity @s {item:{id:"minecraft:barrier",count:1}}
effect give @s minecraft:instant_damage 100 0 true