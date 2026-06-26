## appelée par spells:loop
# affiche les particules aux joueurs

execute as @s[tag=backup_r,type=wandering_trader,tag=blue] run particle minecraft:smoke ~ ~0.5 ~ 0.2 0.5 0.2 0.001 10 force @a
execute as @s[tag=backup_r,type=wandering_trader,tag=blue] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[team=blue]

execute as @s[tag=backup_r,type=wandering_trader,tag=red] run particle minecraft:smoke ~ ~0.5 ~ 0.2 0.5 0.2 0.001 10 force @a
execute as @s[tag=backup_r,type=wandering_trader,tag=red] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[team=red]

execute as @s[tag=backup_r,type=wandering_trader,tag=no_team] run particle minecraft:smoke ~ ~0.5 ~ 0.2 0.5 0.2 0.001 10 force @a
execute as @s[tag=backup_r,type=wandering_trader,tag=no_team,scores={backup_number_r=1}] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[scores={Player=1}]
execute as @s[tag=backup_r,type=wandering_trader,tag=no_team,scores={backup_number_r=2}] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[scores={Player=2}]
execute as @s[tag=backup_r,type=wandering_trader,tag=no_team,scores={backup_number_r=3}] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[scores={Player=3}]
execute as @s[tag=backup_r,type=wandering_trader,tag=no_team,scores={backup_number_r=4}] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[scores={Player=4}]
execute as @s[tag=backup_r,type=wandering_trader,tag=no_team,scores={backup_number_r=5}] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[scores={Player=5}]
execute as @s[tag=backup_r,type=wandering_trader,tag=no_team,scores={backup_number_r=6}] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[scores={Player=6}]
execute as @s[tag=backup_r,type=wandering_trader,tag=no_team,scores={backup_number_r=7}] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[scores={Player=7}]
execute as @s[tag=backup_r,type=wandering_trader,tag=no_team,scores={backup_number_r=8}] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[scores={Player=8}]
execute as @s[tag=backup_r,type=wandering_trader,tag=no_team,scores={backup_number_r=9}] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[scores={Player=9}]
execute as @s[tag=backup_r,type=wandering_trader,tag=no_team,scores={backup_number_r=10}] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[scores={Player=10}]
execute as @s[tag=backup_r,type=wandering_trader,tag=no_team,scores={backup_number_r=11}] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[scores={Player=11}]
execute as @s[tag=backup_r,type=wandering_trader,tag=no_team,scores={backup_number_r=12}] run particle minecraft:happy_villager ~ ~0.5 ~ 0.2 0.5 0.2 3 1 force @a[scores={Player=12}]