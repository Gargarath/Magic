## appelée par refresh_bossbar
# permet de lancer l'affichage pour @s

execute as @e[tag=exploraycast8] run function spells:spellsystem/spell1/spell1_a/delete_raycast_marker
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast8","exploraycast8_1"]}
execute at @s run summon marker ~ ~ ~ {Tags:["exploraycast","exploraycast8","exploraycast8_2"]}

execute as @e[type=marker,tag=exploraycast8] at @s positioned 0 0 0 rotated as @e[type=marker,tag=exploarrow_rotation8,limit=1,distance=..2] run rotate @s ~ 0
data merge entity @s[type=arrow] {CustomName:"2"}
execute if entity @s[type=!arrow] run data merge entity @e[type=text_display,tag=explo_player_timer8,limit=1] {text:"2"}
execute if entity @s[type=!arrow,type=!iron_golem,type=!slime] at @s run tp @e[type=text_display,tag=explo_player_timer8,limit=1] ~ ~2 ~
execute if entity @s[type=!arrow,type=!player,type=!wither_skeleton] at @s run tp @e[type=text_display,tag=explo_player_timer8,limit=1] ~ ~3 ~

execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=8},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=..15] ~ ~ ~ 100 2
execute at @e[type=#explo_arrow_holder,scores={hit_by_explo=8},limit=1] run playsound minecraft:block.note_block.basedrum master @a[distance=16..,scores={Player=8}] ~ ~ ~ 100 2

scoreboard players set @e[type=marker,tag=exploraycast8] explo_position_a 0
execute at @s as @e[type=marker,tag=exploraycast8_1,limit=1,sort=nearest] at @s rotated ~-20 0 positioned ^0.5 ^ ^-0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player8/yellow
execute at @s as @e[type=marker,tag=exploraycast8_2,limit=1,sort=nearest] at @s rotated ~20 0 positioned ^-0.5 ^ ^-0.5 positioned ~ ~ ~ run function spells:spellsystem/spell1/spell1_a/raycast/player8/yellow