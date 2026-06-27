# appelée par bossfight_loop quand @s ramasse l'item
# permet d'attribuer la cap d'objectif secondaire à @s

tag @s remove save_inventory
clear @s slime_ball
tag @s add save_inventory

function main:killfeed/boss_item_picked_up

execute if entity @s[tag=blue_team] run function gamemode:ctf/secondary_objectives/bossfight/candyworld_map/win/blue_win
execute if entity @s[tag=red_team] run function gamemode:ctf/secondary_objectives/bossfight/candyworld_map/win/red_win

scoreboard players add @s stat_boss_item_picked_up 1
# ajoute 1 a la stat d'item de boss ramassé de @s

scoreboard players set obj_complete living_cherry 1
# indique que l'objet a été ramassé
