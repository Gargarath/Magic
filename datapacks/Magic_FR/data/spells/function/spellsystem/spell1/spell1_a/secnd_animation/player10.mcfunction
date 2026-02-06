## appelée par refresh_bossbar
# permet de lancer l'affichage pour @s

execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=10},limit=1] run function spells:spellsystem/spell1/spell1_a/start_animation/red_circle

execute as @e[tag=exploraycast10] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_1"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_2"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_3"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_4"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_5"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_6"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_7"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_8"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_9"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_10"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_11"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_12"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_13"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast10","exploraycast10_14"]}

execute if entity @s[type=!arrow,type=!iron_golem,type=!slime] at @s run tp @e[type=text_display,tag=explo_player_timer10,limit=1] ~ ~2 ~
execute if entity @s[type=!arrow,type=!player,type=!wither_skeleton] at @s run tp @e[type=text_display,tag=explo_player_timer10,limit=1] ~ ~3 ~

execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=10},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=..15] ~ ~ ~ 100 2
execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=10},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=16..,scores={Player=10}] ~ ~ ~ 100 2

scoreboard players set @e[type=marker,tag=exploraycast10] explo_position_a 0
execute at @s as @e[type=marker,tag=exploraycast10_1,limit=1,sort=nearest] at @s rotated ~ ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red
execute at @s as @e[type=marker,tag=exploraycast10_2,limit=1,sort=nearest] at @s rotated ~90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red
execute at @s as @e[type=marker,tag=exploraycast10_3,limit=1,sort=nearest] at @s rotated ~-90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red
execute at @s as @e[type=marker,tag=exploraycast10_4,limit=1,sort=nearest] at @s rotated ~180 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red
execute at @s as @e[type=marker,tag=exploraycast10_5,limit=1,sort=nearest] at @s rotated ~ ~90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red
execute at @s as @e[type=marker,tag=exploraycast10_6,limit=1,sort=nearest] at @s rotated ~ ~-90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red

execute at @s as @e[type=marker,tag=exploraycast10_7,limit=1,sort=nearest] at @s rotated ~ ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red
execute at @s as @e[type=marker,tag=exploraycast10_8,limit=1,sort=nearest] at @s rotated ~90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red
execute at @s as @e[type=marker,tag=exploraycast10_9,limit=1,sort=nearest] at @s rotated ~-90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red
execute at @s as @e[type=marker,tag=exploraycast10_10,limit=1,sort=nearest] at @s rotated ~180 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red

execute at @s as @e[type=marker,tag=exploraycast10_11,limit=1,sort=nearest] at @s rotated ~ ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red
execute at @s as @e[type=marker,tag=exploraycast10_12,limit=1,sort=nearest] at @s rotated ~90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red
execute at @s as @e[type=marker,tag=exploraycast10_13,limit=1,sort=nearest] at @s rotated ~-90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red
execute at @s as @e[type=marker,tag=exploraycast10_14,limit=1,sort=nearest] at @s rotated ~180 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player10/red