## appelée par onground/start_countdown quand la fleche explo a touché le sol
# permet de lancer la détonnation

execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=9},limit=1] run function spells:spellsystem/spell1/spell1_a/start_animation/red_circle

execute as @e[tag=exploraycast9] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_1"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_2"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_3"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_4"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_5"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_6"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_7"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_8"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_9"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_10"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_11"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_12"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_13"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast9","exploraycast9_14"]}


execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=9},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=..15] ~ ~ ~ 100 2
execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=9},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=16..,scores={Player=9}] ~ ~ ~ 100 2

scoreboard players set @e[type=marker,tag=exploraycast9] explo_position_a 0
execute at @s as @e[type=marker,tag=exploraycast9_1,limit=1,sort=nearest] at @s rotated ~ ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red
execute at @s as @e[type=marker,tag=exploraycast9_2,limit=1,sort=nearest] at @s rotated ~90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red
execute at @s as @e[type=marker,tag=exploraycast9_3,limit=1,sort=nearest] at @s rotated ~-90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red
execute at @s as @e[type=marker,tag=exploraycast9_4,limit=1,sort=nearest] at @s rotated ~180 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red
execute at @s as @e[type=marker,tag=exploraycast9_5,limit=1,sort=nearest] at @s rotated ~ ~90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red
execute at @s as @e[type=marker,tag=exploraycast9_6,limit=1,sort=nearest] at @s rotated ~ ~-90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red

execute at @s as @e[type=marker,tag=exploraycast9_7,limit=1,sort=nearest] at @s rotated ~ ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red
execute at @s as @e[type=marker,tag=exploraycast9_8,limit=1,sort=nearest] at @s rotated ~90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red
execute at @s as @e[type=marker,tag=exploraycast9_9,limit=1,sort=nearest] at @s rotated ~-90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red
execute at @s as @e[type=marker,tag=exploraycast9_10,limit=1,sort=nearest] at @s rotated ~180 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red

execute at @s as @e[type=marker,tag=exploraycast9_11,limit=1,sort=nearest] at @s rotated ~ ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red
execute at @s as @e[type=marker,tag=exploraycast9_12,limit=1,sort=nearest] at @s rotated ~90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red
execute at @s as @e[type=marker,tag=exploraycast9_13,limit=1,sort=nearest] at @s rotated ~-90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red
execute at @s as @e[type=marker,tag=exploraycast9_14,limit=1,sort=nearest] at @s rotated ~180 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player9/red

scoreboard players set @a[scores={Player=9}] explosive_arrow_timer 0
execute store result bossbar explosive_arrow:player9 value run scoreboard players get @a[scores={Player=9},limit=1] explosive_arrow_timer
bossbar set explosive_arrow:player9 players @a[scores={Player=9}]