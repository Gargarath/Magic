## appelée par refresh_bossbar
# permet de lancer l'affichage pour @s

execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=4},limit=1] run function spells:spellsystem/spell1/spell1_a/start_animation/red_circle

execute as @e[tag=exploraycast4] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_1"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_2"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_3"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_4"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_5"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_6"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_7"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_8"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_9"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_10"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_11"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_12"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_13"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast4","exploraycast4_14"]}

execute if entity @s[type=!arrow,type=!iron_golem,type=!slime] at @s run tp @e[type=text_display,tag=explo_player_timer4,limit=1] ~ ~2 ~
execute if entity @s[type=!arrow,type=!player,type=!wither_skeleton] at @s run tp @e[type=text_display,tag=explo_player_timer4,limit=1] ~ ~3 ~

execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=4},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=..15] ~ ~ ~ 100 2
execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=4},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=16..,scores={Player=4}] ~ ~ ~ 100 2

scoreboard players set @e[type=marker,tag=exploraycast4] explo_position_a 0
execute at @s as @e[type=marker,tag=exploraycast4_1,limit=1,sort=nearest] at @s rotated ~ ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red
execute at @s as @e[type=marker,tag=exploraycast4_2,limit=1,sort=nearest] at @s rotated ~90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red
execute at @s as @e[type=marker,tag=exploraycast4_3,limit=1,sort=nearest] at @s rotated ~-90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red
execute at @s as @e[type=marker,tag=exploraycast4_4,limit=1,sort=nearest] at @s rotated ~180 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red
execute at @s as @e[type=marker,tag=exploraycast4_5,limit=1,sort=nearest] at @s rotated ~ ~90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red
execute at @s as @e[type=marker,tag=exploraycast4_6,limit=1,sort=nearest] at @s rotated ~ ~-90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red

execute at @s as @e[type=marker,tag=exploraycast4_7,limit=1,sort=nearest] at @s rotated ~ ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red
execute at @s as @e[type=marker,tag=exploraycast4_8,limit=1,sort=nearest] at @s rotated ~90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red
execute at @s as @e[type=marker,tag=exploraycast4_9,limit=1,sort=nearest] at @s rotated ~-90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red
execute at @s as @e[type=marker,tag=exploraycast4_10,limit=1,sort=nearest] at @s rotated ~180 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red

execute at @s as @e[type=marker,tag=exploraycast4_11,limit=1,sort=nearest] at @s rotated ~ ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red
execute at @s as @e[type=marker,tag=exploraycast4_12,limit=1,sort=nearest] at @s rotated ~90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red
execute at @s as @e[type=marker,tag=exploraycast4_13,limit=1,sort=nearest] at @s rotated ~-90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red
execute at @s as @e[type=marker,tag=exploraycast4_14,limit=1,sort=nearest] at @s rotated ~180 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player4/red