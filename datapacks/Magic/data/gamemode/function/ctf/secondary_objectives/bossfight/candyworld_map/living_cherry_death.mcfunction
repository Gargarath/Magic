# appelée par ctf:secondary_objectives/bossfight/graveyard_map/bossfight_loop
# permet de drop l'objet de la liche

execute at @e[type=minecraft:item_display,tag=show_living_cherry_invulnerable,limit=1] run summon item ~ ~-1.5 ~ {Tags:["summoned","living_cherry_item"],Item:{id:"minecraft:slime_ball",Count:1b},Invulnerable:1b}
# invoque l'objet de la cerise

execute as @a at @e[type=minecraft:item_display,tag=show_living_cherry_invulnerable,limit=1] positioned ~ ~-1.5 ~ run playsound minecraft:entity.wither.death master @s ~ ~ ~ 100 1
# fait un bruit de mort de la cerise bonbon à tous les joueurs

kill @e[type=minecraft:item_display,tag=show_living_cherry_invulnerable,limit=1]

bossbar set secondary_objective:state value 0
# vide la barre de vie de la cerise bonbon

scoreboard players set is_dead living_cherry 1
# indique que l'objet a été drop et que la  cerise bonbon est bien concidérée comme morte