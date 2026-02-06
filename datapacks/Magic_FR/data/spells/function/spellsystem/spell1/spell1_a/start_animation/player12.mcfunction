## appelée par onground/start_countdown quand la fleche explo a touché le sol
# permet de lancer la détonnation

execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=12},limit=1] run function spells:spellsystem/spell1/spell1_a/start_animation/red_circle

execute as @e[tag=exploraycast12] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_1"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_2"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_3"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_4"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_5"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_6"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_7"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_8"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_9"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_10"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_11"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_12"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_13"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast12","exploraycast12_14"]}


execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=12},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=..15] ~ ~ ~ 100 2
execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=12},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=16..,scores={Player=12}] ~ ~ ~ 100 2

scoreboard players set @e[type=marker,tag=exploraycast12] explo_position_a 0
execute at @s as @e[type=marker,tag=exploraycast12_1,limit=1,sort=nearest] at @s rotated ~ ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red
execute at @s as @e[type=marker,tag=exploraycast12_2,limit=1,sort=nearest] at @s rotated ~90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red
execute at @s as @e[type=marker,tag=exploraycast12_3,limit=1,sort=nearest] at @s rotated ~-90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red
execute at @s as @e[type=marker,tag=exploraycast12_4,limit=1,sort=nearest] at @s rotated ~180 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red
execute at @s as @e[type=marker,tag=exploraycast12_5,limit=1,sort=nearest] at @s rotated ~ ~90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red
execute at @s as @e[type=marker,tag=exploraycast12_6,limit=1,sort=nearest] at @s rotated ~ ~-90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red

execute at @s as @e[type=marker,tag=exploraycast12_7,limit=1,sort=nearest] at @s rotated ~ ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red
execute at @s as @e[type=marker,tag=exploraycast12_8,limit=1,sort=nearest] at @s rotated ~90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red
execute at @s as @e[type=marker,tag=exploraycast12_9,limit=1,sort=nearest] at @s rotated ~-90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red
execute at @s as @e[type=marker,tag=exploraycast12_10,limit=1,sort=nearest] at @s rotated ~180 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red

execute at @s as @e[type=marker,tag=exploraycast12_11,limit=1,sort=nearest] at @s rotated ~ ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red
execute at @s as @e[type=marker,tag=exploraycast12_12,limit=1,sort=nearest] at @s rotated ~90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red
execute at @s as @e[type=marker,tag=exploraycast12_13,limit=1,sort=nearest] at @s rotated ~-90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red
execute at @s as @e[type=marker,tag=exploraycast12_14,limit=1,sort=nearest] at @s rotated ~180 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player12/red

scoreboard players set @a[scores={Player=12}] explosive_arrow_timer 0
execute store result bossbar explosive_arrow:player12 value run scoreboard players get @a[scores={Player=12},limit=1] explosive_arrow_timer
bossbar set explosive_arrow:player12 players @a[scores={Player=12}]