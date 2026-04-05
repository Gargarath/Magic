# appelée par ctf:secondary_objectives/bossfight/ruin_map/bossfight_loop
# fait caster un sort aléatoire au golem


# POUR L'INSTANT UN SEUL SORT (ATTAQUER) DONC CETTE FONCTION SERT A LE LANCER

execute unless entity @a[tag=target,tag=targetable] run tag @a remove target

tp @e[tag=golem_waiting_spot] -519 0 -111
kill @e[tag=golem_waiting_spot]

scoreboard players set invulnerable golem 0
data merge entity @s {NoAI:0b,Invulnerable:0b}
execute as @e[type=minecraft:item_display,tag=show_golem_invulnerable] run data merge entity @s {item:{id:"minecraft:air",count:1}}
effect clear @s minecraft:regeneration

attribute @e[tag=golem,limit=1] minecraft:follow_range base set 100


execute at @s run tag @a[tag=targetable,sort=nearest,limit=1] add target
# cible un joueur aléatoire

