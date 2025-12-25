## appelée par bossfight_loop permet de rendre la cerise vivante invulnérable si il n'y a plus personne dans la zone

scoreboard players set invulnerable living_cherry 1
item replace entity @e[type=minecraft:armor_stand,tag=show_living_cherry_invulnerable] armor.head with barrier
data merge entity @s {Invulnerable:1b,NoAI:1b}