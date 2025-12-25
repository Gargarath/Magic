# appelée par ctf:secondary_objectives/bossfight/ruin_map/bossfight_loop
# permet de drop l'objet du golem

execute at @e[type=minecraft:item_display,tag=show_golem_invulnerable,limit=1] run summon item ~ ~-1.5 ~ {Tags:["summoned","golem_item"],Item:{id:"minecraft:emerald_block",Count:1b},Invulnerable:1b}
# invoque l'objet du golem

execute as @a at @e[type=minecraft:item_display,tag=show_golem_invulnerable,limit=1] positioned ~ ~-1.5 ~ run playsound minecraft:entity.wither.death master @s ~ ~ ~ 100 1
# fait un bruit de mort du golem à tous les joueurs dans la map

kill @e[type=minecraft:item_display,tag=show_golem_invulnerable,limit=1]

bossbar set minecraft:secondary_objective value 0
# vide la barre de vie de la liche

scoreboard players set is_dead golem 1
# indique que l'objet a été drop et que le golem est bien concidérée comme morte