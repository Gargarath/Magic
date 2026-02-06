## appelée par spells:loop
## permet d''invoquer l'aoe du joueur 7

tag @a[scores={Player=7}] remove launched_smoke_bomb_r
# stop la boucle pour détecter la position de la potion

execute if entity @a[scores={Player=7},team=blue] at @e[type=area_effect_cloud,tag=smoke_bomb_position7] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Duration:160,Tags:["smoke_bomb","smoke_bomb_lvl1","smoke_bomb_lvl1_blue","smoke_bomb_player7"]}
execute if entity @a[scores={Player=7},team=red] at @e[type=area_effect_cloud,tag=smoke_bomb_position7] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Duration:160,Tags:["smoke_bomb","smoke_bomb_lvl1","smoke_bomb_lvl1_red","smoke_bomb_player7"]}
execute if entity @a[scores={Player=7},tag=no_team] at @e[type=area_effect_cloud,tag=smoke_bomb_position7] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Duration:160,Tags:["smoke_bomb","smoke_bomb_lvl1","smoke_bomb_player7"]}
scoreboard players set player7 has_smoke_potion -1

execute if score @s spell3 matches 1 run scoreboard players set @s smoke_bomb_timer 160
execute if score @s spell3 matches 1 run bossbar set smoke_bomb:player7 max 160
bossbar set smoke_bomb:player7 players @s