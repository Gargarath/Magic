# appelée par bossfight_loop quand @s ramasse l'item
# permet d'attribuer la cap d'objectif secondaire à @s

tag @s remove save_inventory
clear @s nether_star
tag @s add save_inventory

tellraw @a ["",{"selector":"@s"}," ",{"object":"atlas","atlas":"minecraft:items","sprite":"item/bundle","color":"white","bold":false,"shadow_color":-16250872}," ",{"nbt":"bossname","storage":"main:killfeed","interpret":true}]

execute if score @s team_side matches 1 run function ctf:secondary_objectives/bossfight/graveyard_map/win/blue_win
execute if score @s team_side matches 2 run function ctf:secondary_objectives/bossfight/graveyard_map/win/red_win

scoreboard players add @s stat_boss_item_picked_up 1
# ajoute 1 a la stat d'item de boss ramassé de @s