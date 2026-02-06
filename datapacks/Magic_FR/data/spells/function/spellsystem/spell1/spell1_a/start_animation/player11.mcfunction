## appelée par onground/start_countdown quand la fleche explo a touché le sol
# permet de lancer la détonnation

execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=11},limit=1] run function spells:spellsystem/spell1/spell1_a/start_animation/red_circle

execute as @e[tag=exploraycast11] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_1"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_2"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_3"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_4"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_5"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_6"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_7"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_8"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_9"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_10"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_11"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_12"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_13"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast11","exploraycast11_14"]}


execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=11},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=..15] ~ ~ ~ 100 2
execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=11},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=16..,scores={Player=11}] ~ ~ ~ 100 2

scoreboard players set @e[type=marker,tag=exploraycast11] explo_position_a 0
execute at @s as @e[type=marker,tag=exploraycast11_1,limit=1,sort=nearest] at @s rotated ~ ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red
execute at @s as @e[type=marker,tag=exploraycast11_2,limit=1,sort=nearest] at @s rotated ~90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red
execute at @s as @e[type=marker,tag=exploraycast11_3,limit=1,sort=nearest] at @s rotated ~-90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red
execute at @s as @e[type=marker,tag=exploraycast11_4,limit=1,sort=nearest] at @s rotated ~180 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red
execute at @s as @e[type=marker,tag=exploraycast11_5,limit=1,sort=nearest] at @s rotated ~ ~90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red
execute at @s as @e[type=marker,tag=exploraycast11_6,limit=1,sort=nearest] at @s rotated ~ ~-90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red

execute at @s as @e[type=marker,tag=exploraycast11_7,limit=1,sort=nearest] at @s rotated ~ ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red
execute at @s as @e[type=marker,tag=exploraycast11_8,limit=1,sort=nearest] at @s rotated ~90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red
execute at @s as @e[type=marker,tag=exploraycast11_9,limit=1,sort=nearest] at @s rotated ~-90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red
execute at @s as @e[type=marker,tag=exploraycast11_10,limit=1,sort=nearest] at @s rotated ~180 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red

execute at @s as @e[type=marker,tag=exploraycast11_11,limit=1,sort=nearest] at @s rotated ~ ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red
execute at @s as @e[type=marker,tag=exploraycast11_12,limit=1,sort=nearest] at @s rotated ~90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red
execute at @s as @e[type=marker,tag=exploraycast11_13,limit=1,sort=nearest] at @s rotated ~-90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red
execute at @s as @e[type=marker,tag=exploraycast11_14,limit=1,sort=nearest] at @s rotated ~180 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player11/red

scoreboard players set @a[scores={Player=11}] explosive_arrow_timer 0
execute store result bossbar explosive_arrow:player11 value run scoreboard players get @a[scores={Player=11},limit=1] explosive_arrow_timer
bossbar set explosive_arrow:player11 players @a[scores={Player=11}]