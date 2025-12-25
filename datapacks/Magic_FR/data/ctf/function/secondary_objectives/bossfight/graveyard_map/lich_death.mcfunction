# appelée par ctf:secondary_objectives/bossfight/graveyard_map/bossfight_loop
# permet de drop l'objet de la liche

summon item 218 169 -281 {Tags:["summoned","lich_item"],Item:{id:"minecraft:nether_star",Count:1b},Invulnerable:1b}
# invoque l'objet de la liche

execute as @a[tag=targetable] at @s run playsound minecraft:entity.wither.death master @s 218 169 -281 100 1
# fait un bruit de mort de liche à tous les joueurs dans l'église

kill @e[type=minecraft:item_display,tag=show_lich_invulnerable,limit=1]

bossbar set minecraft:secondary_objective value 0
# vide la barre de vie de la liche

tag @a remove target
tag @a remove targetable
kill @e[type=minecraft:marker,tag=lich_aoe]
# clear les sorts de la liche

scoreboard players set is_dead lich 1
# indique que l'objet a été drop et que la liche est bien concidérée comme morte