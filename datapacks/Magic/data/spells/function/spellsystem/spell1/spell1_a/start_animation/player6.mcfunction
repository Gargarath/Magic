## appelée par onground/start_countdown quand la fleche explo a touché le sol
# permet de lancer la détonnation

execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=6},limit=1] run function spells:spellsystem/spell1/spell1_a/start_animation/red_circle

execute as @e[tag=exploraycast6] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_1"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_2"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_3"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_4"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_5"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_6"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_7"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_8"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_9"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_10"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_11"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_12"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_13"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast6","exploraycast6_14"]}


execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=6},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=..15] ~ ~ ~ 100 2
execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=6},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=16..,scores={Player=6}] ~ ~ ~ 100 2

scoreboard players set @e[type=marker,tag=exploraycast6] explo_position_a 0
execute at @s as @e[type=marker,tag=exploraycast6_1,limit=1,sort=nearest] at @s rotated ~ ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red
execute at @s as @e[type=marker,tag=exploraycast6_2,limit=1,sort=nearest] at @s rotated ~90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red
execute at @s as @e[type=marker,tag=exploraycast6_3,limit=1,sort=nearest] at @s rotated ~-90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red
execute at @s as @e[type=marker,tag=exploraycast6_4,limit=1,sort=nearest] at @s rotated ~180 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red
execute at @s as @e[type=marker,tag=exploraycast6_5,limit=1,sort=nearest] at @s rotated ~ ~90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red
execute at @s as @e[type=marker,tag=exploraycast6_6,limit=1,sort=nearest] at @s rotated ~ ~-90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red

execute at @s as @e[type=marker,tag=exploraycast6_7,limit=1,sort=nearest] at @s rotated ~ ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red
execute at @s as @e[type=marker,tag=exploraycast6_8,limit=1,sort=nearest] at @s rotated ~90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red
execute at @s as @e[type=marker,tag=exploraycast6_9,limit=1,sort=nearest] at @s rotated ~-90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red
execute at @s as @e[type=marker,tag=exploraycast6_10,limit=1,sort=nearest] at @s rotated ~180 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red

execute at @s as @e[type=marker,tag=exploraycast6_11,limit=1,sort=nearest] at @s rotated ~ ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red
execute at @s as @e[type=marker,tag=exploraycast6_12,limit=1,sort=nearest] at @s rotated ~90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red
execute at @s as @e[type=marker,tag=exploraycast6_13,limit=1,sort=nearest] at @s rotated ~-90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red
execute at @s as @e[type=marker,tag=exploraycast6_14,limit=1,sort=nearest] at @s rotated ~180 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player6/red

scoreboard players set @a[scores={Player=6}] explosive_arrow_timer 0
execute store result bossbar explosive_arrow:player6 value run scoreboard players get @a[scores={Player=6},limit=1] explosive_arrow_timer
bossbar set explosive_arrow:player6 players @a[scores={Player=6}]