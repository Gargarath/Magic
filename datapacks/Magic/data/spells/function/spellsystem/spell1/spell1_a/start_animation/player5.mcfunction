## appelée par onground/start_countdown quand la fleche explo a touché le sol
# permet de lancer la détonnation

execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=5},limit=1] run function spells:spellsystem/spell1/spell1_a/start_animation/red_circle

execute as @e[tag=exploraycast5] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_1"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_2"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_3"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_4"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_5"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_6"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_7"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_8"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_9"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_10"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_11"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_12"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_13"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast5","exploraycast5_14"]}


execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=5},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=..15] ~ ~ ~ 100 2
execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=5},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=16..,scores={Player=5}] ~ ~ ~ 100 2

scoreboard players set @e[type=marker,tag=exploraycast5] explo_position_a 0
execute at @s as @e[type=marker,tag=exploraycast5_1,limit=1,sort=nearest] at @s rotated ~ ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red
execute at @s as @e[type=marker,tag=exploraycast5_2,limit=1,sort=nearest] at @s rotated ~90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red
execute at @s as @e[type=marker,tag=exploraycast5_3,limit=1,sort=nearest] at @s rotated ~-90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red
execute at @s as @e[type=marker,tag=exploraycast5_4,limit=1,sort=nearest] at @s rotated ~180 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red
execute at @s as @e[type=marker,tag=exploraycast5_5,limit=1,sort=nearest] at @s rotated ~ ~90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red
execute at @s as @e[type=marker,tag=exploraycast5_6,limit=1,sort=nearest] at @s rotated ~ ~-90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red

execute at @s as @e[type=marker,tag=exploraycast5_7,limit=1,sort=nearest] at @s rotated ~ ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red
execute at @s as @e[type=marker,tag=exploraycast5_8,limit=1,sort=nearest] at @s rotated ~90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red
execute at @s as @e[type=marker,tag=exploraycast5_9,limit=1,sort=nearest] at @s rotated ~-90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red
execute at @s as @e[type=marker,tag=exploraycast5_10,limit=1,sort=nearest] at @s rotated ~180 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red

execute at @s as @e[type=marker,tag=exploraycast5_11,limit=1,sort=nearest] at @s rotated ~ ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red
execute at @s as @e[type=marker,tag=exploraycast5_12,limit=1,sort=nearest] at @s rotated ~90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red
execute at @s as @e[type=marker,tag=exploraycast5_13,limit=1,sort=nearest] at @s rotated ~-90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red
execute at @s as @e[type=marker,tag=exploraycast5_14,limit=1,sort=nearest] at @s rotated ~180 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player5/red

scoreboard players set @a[scores={Player=5}] explosive_arrow_timer 0
execute store result bossbar explosive_arrow:player5 value run scoreboard players get @a[scores={Player=5},limit=1] explosive_arrow_timer
bossbar set explosive_arrow:player5 players @a[scores={Player=5}]