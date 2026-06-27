## appelée par main:killfeed/_entity_killed_player au nom du boss
# permet de préparer puis d'afficher individuellement le kill d'un joueur par un boss

execute if score @a[tag=killed,limit=1,distance=0] Player matches 1 run data modify storage main:killfeed victim_name set from storage main:killfeed name.1
execute if score @a[tag=killed,limit=1,distance=0] Player matches 1 run data modify storage main:killfeed victim_death_cause set from storage main:killfeed death_cause.1
execute if score @a[tag=killed,limit=1,distance=0] Player matches 2 run data modify storage main:killfeed victim_name set from storage main:killfeed name.2
execute if score @a[tag=killed,limit=1,distance=0] Player matches 2 run data modify storage main:killfeed victim_death_cause set from storage main:killfeed death_cause.2
execute if score @a[tag=killed,limit=1,distance=0] Player matches 3 run data modify storage main:killfeed victim_name set from storage main:killfeed name.3
execute if score @a[tag=killed,limit=1,distance=0] Player matches 3 run data modify storage main:killfeed victim_death_cause set from storage main:killfeed death_cause.3
execute if score @a[tag=killed,limit=1,distance=0] Player matches 4 run data modify storage main:killfeed victim_name set from storage main:killfeed name.4
execute if score @a[tag=killed,limit=1,distance=0] Player matches 4 run data modify storage main:killfeed victim_death_cause set from storage main:killfeed death_cause.4
execute if score @a[tag=killed,limit=1,distance=0] Player matches 5 run data modify storage main:killfeed victim_name set from storage main:killfeed name.5
execute if score @a[tag=killed,limit=1,distance=0] Player matches 5 run data modify storage main:killfeed victim_death_cause set from storage main:killfeed death_cause.5
execute if score @a[tag=killed,limit=1,distance=0] Player matches 6 run data modify storage main:killfeed victim_name set from storage main:killfeed name.6
execute if score @a[tag=killed,limit=1,distance=0] Player matches 6 run data modify storage main:killfeed victim_death_cause set from storage main:killfeed death_cause.6
execute if score @a[tag=killed,limit=1,distance=0] Player matches 7 run data modify storage main:killfeed victim_name set from storage main:killfeed name.7
execute if score @a[tag=killed,limit=1,distance=0] Player matches 7 run data modify storage main:killfeed victim_death_cause set from storage main:killfeed death_cause.7
execute if score @a[tag=killed,limit=1,distance=0] Player matches 8 run data modify storage main:killfeed victim_name set from storage main:killfeed name.8
execute if score @a[tag=killed,limit=1,distance=0] Player matches 8 run data modify storage main:killfeed victim_death_cause set from storage main:killfeed death_cause.8
execute if score @a[tag=killed,limit=1,distance=0] Player matches 9 run data modify storage main:killfeed victim_name set from storage main:killfeed name.9
execute if score @a[tag=killed,limit=1,distance=0] Player matches 9 run data modify storage main:killfeed victim_death_cause set from storage main:killfeed death_cause.9
execute if score @a[tag=killed,limit=1,distance=0] Player matches 10 run data modify storage main:killfeed victim_name set from storage main:killfeed name.10
execute if score @a[tag=killed,limit=1,distance=0] Player matches 10 run data modify storage main:killfeed victim_death_cause set from storage main:killfeed death_cause.10
execute if score @a[tag=killed,limit=1,distance=0] Player matches 11 run data modify storage main:killfeed victim_name set from storage main:killfeed name.11
execute if score @a[tag=killed,limit=1,distance=0] Player matches 11 run data modify storage main:killfeed victim_death_cause set from storage main:killfeed death_cause.11
execute if score @a[tag=killed,limit=1,distance=0] Player matches 12 run data modify storage main:killfeed victim_name set from storage main:killfeed name.12
execute if score @a[tag=killed,limit=1,distance=0] Player matches 12 run data modify storage main:killfeed victim_death_cause set from storage main:killfeed death_cause.12

execute if entity @s[tag=lich] run scoreboard players set $killfeed_boss_type secondary_objective_slot 2
execute if entity @s[tag=golem] run scoreboard players set $killfeed_boss_type secondary_objective_slot 5
execute if entity @s[tag=living_cherry] run scoreboard players set $killfeed_boss_type secondary_objective_slot 6

execute as @a[tag=display_killfeed] run function main:killfeed/messages/boss_killed_player with entity @s EnderItems[0].components.minecraft:custom_data
