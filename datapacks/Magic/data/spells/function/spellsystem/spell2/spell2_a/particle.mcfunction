## appelée par someoneclose/check_trap
# affiche les particules aux joueurs

execute at @s[tag=red,tag=trap] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[team=red]
execute at @s[tag=blue,tag=trap] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[team=blue]

execute at @s[tag=no_team,tag=trap,scores={trap_number_a=1}] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[tag=trap1_immune]
execute at @s[tag=no_team,tag=trap,scores={trap_number_a=2}] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[tag=trap2_immune]
execute at @s[tag=no_team,tag=trap,scores={trap_number_a=3}] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[tag=trap3_immune]
execute at @s[tag=no_team,tag=trap,scores={trap_number_a=4}] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[tag=trap4_immune]
execute at @s[tag=no_team,tag=trap,scores={trap_number_a=5}] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[tag=trap5_immune]
execute at @s[tag=no_team,tag=trap,scores={trap_number_a=6}] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[tag=trap6_immune]
execute at @s[tag=no_team,tag=trap,scores={trap_number_a=7}] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[tag=trap7_immune]
execute at @s[tag=no_team,tag=trap,scores={trap_number_a=8}] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[tag=trap8_immune]
execute at @s[tag=no_team,tag=trap,scores={trap_number_a=9}] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[tag=trap9_immune]
execute at @s[tag=no_team,tag=trap,scores={trap_number_a=10}] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[tag=trap10_immune]
execute at @s[tag=no_team,tag=trap,scores={trap_number_a=11}] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[tag=trap11_immune]
execute at @s[tag=no_team,tag=trap,scores={trap_number_a=12}] run particle minecraft:happy_villager ~ ~0.7 ~ 0.1 0 0.1 0.01 1 normal @a[tag=trap12_immune]