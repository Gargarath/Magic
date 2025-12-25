## appelée par spells:loop
## permet d''invoquer l'aoe du joueur 10

tag @a[scores={Player=10}] remove launched_smoke_bomb_r
# stop la boucle pour détecter la position de la potion

execute if entity @a[scores={Player=10},team=blue] at @e[type=area_effect_cloud,tag=smoke_bomb_position10] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Duration:160,Tags:["smoke_bomb","smoke_bomb_lvl1","smoke_bomb_lvl1_blue","smoke_bomb_player10"]}
execute if entity @a[scores={Player=10},team=red] at @e[type=area_effect_cloud,tag=smoke_bomb_position10] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Duration:160,Tags:["smoke_bomb","smoke_bomb_lvl1","smoke_bomb_lvl1_red","smoke_bomb_player10"]}
scoreboard players set player10 has_smoke_potion -1

execute if score @s spell3 matches 1 run scoreboard players set @s smoke_bomb_timer 160
execute if score @s spell3 matches 1 run bossbar set smoke_bomb:player10 max 160
bossbar set smoke_bomb:player10 players @s