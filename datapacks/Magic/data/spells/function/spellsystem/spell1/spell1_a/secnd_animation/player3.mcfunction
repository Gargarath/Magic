## appelée par refresh_bossbar
# permet de lancer l'affichage pour @s

execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=3},limit=1] run function spells:spellsystem/spell1/spell1_a/start_animation/red_circle

execute as @e[tag=exploraycast3] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_1"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_2"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_3"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_4"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_5"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_6"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_7"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_8"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_9"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_10"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_11"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_12"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_13"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast3","exploraycast3_14"]}

execute if entity @s[type=!arrow,type=!iron_golem,type=!slime] at @s run tp @e[type=text_display,tag=explo_player_timer3,limit=1] ~ ~2 ~
execute if entity @s[type=!arrow,type=!player,type=!wither_skeleton] at @s run tp @e[type=text_display,tag=explo_player_timer3,limit=1] ~ ~3 ~

execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=3},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=..15] ~ ~ ~ 100 2
execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=3},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=16..,scores={Player=3}] ~ ~ ~ 100 2

scoreboard players set @e[type=marker,tag=exploraycast3] explo_position_a 0
execute at @s as @e[type=marker,tag=exploraycast3_1,limit=1,sort=nearest] at @s rotated ~ ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red
execute at @s as @e[type=marker,tag=exploraycast3_2,limit=1,sort=nearest] at @s rotated ~90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red
execute at @s as @e[type=marker,tag=exploraycast3_3,limit=1,sort=nearest] at @s rotated ~-90 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red
execute at @s as @e[type=marker,tag=exploraycast3_4,limit=1,sort=nearest] at @s rotated ~180 ~ positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red
execute at @s as @e[type=marker,tag=exploraycast3_5,limit=1,sort=nearest] at @s rotated ~ ~90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red
execute at @s as @e[type=marker,tag=exploraycast3_6,limit=1,sort=nearest] at @s rotated ~ ~-90 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red

execute at @s as @e[type=marker,tag=exploraycast3_7,limit=1,sort=nearest] at @s rotated ~ ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red
execute at @s as @e[type=marker,tag=exploraycast3_8,limit=1,sort=nearest] at @s rotated ~90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red
execute at @s as @e[type=marker,tag=exploraycast3_9,limit=1,sort=nearest] at @s rotated ~-90 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red
execute at @s as @e[type=marker,tag=exploraycast3_10,limit=1,sort=nearest] at @s rotated ~180 ~45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red

execute at @s as @e[type=marker,tag=exploraycast3_11,limit=1,sort=nearest] at @s rotated ~ ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red
execute at @s as @e[type=marker,tag=exploraycast3_12,limit=1,sort=nearest] at @s rotated ~90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red
execute at @s as @e[type=marker,tag=exploraycast3_13,limit=1,sort=nearest] at @s rotated ~-90 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red
execute at @s as @e[type=marker,tag=exploraycast3_14,limit=1,sort=nearest] at @s rotated ~180 ~-45 positioned ^ ^ ^0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player3/red