# appelée par ctf:secondary_objectives/bossfight/candyworld_map/bossfight_loop
# fait caster un sort aléatoire à la cerise vivante 

execute unless entity @a[tag=target,tag=targetable] run tag @a remove target

scoreboard players set invulnerable living_cherry 0
data merge entity @s {NoAI:0b,Invulnerable:0b}

attribute @s minecraft:follow_range base set 15
effect clear @s minecraft:regeneration

execute at @s run tag @a[tag=targetable,sort=nearest,limit=1] add target
# cible un joueur aléatoire
#execute unless entity @a[tag=target,tag=last_target] run tp @s -19 184 -739
# si ce joueur n'est le même que l'ancienne cible -> tp la cerise au milieu
tag @a remove last_target
# reset le tag de l'ancienne cible
tag @a[tag=target] add last_target
# indique que la cible est le dernier joueur a avoir été ciblé
## cela permet si la cible est la même de pas tp la cerise pour mettre la pression dès le rebord

execute as @e[type=minecraft:item_display,tag=show_living_cherry_invulnerable] run data merge entity @s {item:{id:"minecraft:air",count:1}}


data modify entity @s angry_at set from entity @a[tag=target,limit=1] UUID