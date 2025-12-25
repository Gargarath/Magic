## appelée par bossfight_loop permet de rendre la cerise vivante invulnérable si il n'y a plus personne dans la zone

scoreboard players set invulnerable living_cherry 1
execute as @e[type=minecraft:item_display,tag=show_living_cherry_invulnerable] run data merge entity @s {Rotation:[0f,0f],item:{id:"minecraft:barrier",count:1}}
data merge entity @s {Invulnerable:1b}
attribute @s minecraft:follow_range base set 0
data merge entity @s {AngerTime:0, angry_at:[I;0,0,0,0], last_hurt_by_player:[], last_hurt_by_mob:[]}
effect give @s minecraft:regeneration 100 5 true