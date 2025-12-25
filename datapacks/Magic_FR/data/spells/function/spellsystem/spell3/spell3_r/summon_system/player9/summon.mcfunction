## appelée par spells:loop
## permet d''invoquer l'aoe du joueur 9

tag @a[scores={Player=9}] remove launched_smoke_bomb_r
# stop la boucle pour détecter la position de la potion

execute if entity @a[scores={Player=9},team=blue] at @e[type=area_effect_cloud,tag=smoke_bomb_position9] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Duration:160,Tags:["smoke_bomb","smoke_bomb_lvl1","smoke_bomb_lvl1_blue","smoke_bomb_player9"]}
execute if entity @a[scores={Player=9},team=red] at @e[type=area_effect_cloud,tag=smoke_bomb_position9] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:"minecraft:air"},Duration:160,Tags:["smoke_bomb","smoke_bomb_lvl1","smoke_bomb_lvl1_red","smoke_bomb_player9"]}
scoreboard players set player9 has_smoke_potion -1

execute if score @s spell3 matches 1 run scoreboard players set @s smoke_bomb_timer 160
execute if score @s spell3 matches 1 run bossbar set smoke_bomb:player9 max 160
bossbar set smoke_bomb:player9 players @s