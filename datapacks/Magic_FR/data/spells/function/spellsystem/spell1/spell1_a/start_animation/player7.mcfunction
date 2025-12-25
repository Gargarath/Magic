## appelée par onground/start_countdown start_countdown la fleche explo a touché le sol
# permet de lancer la détonnation

execute as @e[tag=exploraycast7] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast7","exploraycast7_1"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast7","exploraycast7_2"]}

execute as @e[type=marker,tag=exploraycast7] at @s positioned 0 0 0 rotated as @e[type=marker,tag=exploarrow_rotation7,limit=1,distance=..2] run rotate @s ~ 0
execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=7},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=..15] ~ ~ ~ 100 2
execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=7},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=16..,scores={Player=7}] ~ ~ ~ 100 2

scoreboard players set @e[type=marker,tag=exploraycast7] explo_position_a 0
execute at @s as @e[type=marker,tag=exploraycast7_1,limit=1,sort=nearest] at @s rotated ~-20 0 positioned ^0.5 ^ ^-0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player7/green
execute at @s as @e[type=marker,tag=exploraycast7_2,limit=1,sort=nearest] at @s rotated ~20 0 positioned ^-0.5 ^ ^-0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player7/green

scoreboard players set @a[scores={Player=7}] explosive_arrow_timer 0
execute store result bossbar explosive_arrow:player7 value run scoreboard players get @a[scores={Player=7},limit=1] explosive_arrow_timer
bossbar set explosive_arrow:player7 players @a[scores={Player=7}]