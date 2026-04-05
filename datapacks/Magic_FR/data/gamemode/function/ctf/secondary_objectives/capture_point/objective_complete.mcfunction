# appelée par ctf:secondary_objectives/capture_point/pirate_map/point_state_1/blue_win_objective ou ctf:secondary_objectives/capture_point/pirate_map/point_state_2/red_win_objective
# Permet d'arreter le système d'objectif secondaire en cours

scoreboard players set on point_capture 0
# arrete la clock sur l'objectif secondaire

kill @e[tag=objective_center]
kill @e[tag=objective_border]
# enleve les armorstand qui font les particules

bossbar set minecraft:secondary_objective players
bossbar set minecraft:secondary_objective_blue players
bossbar set minecraft:secondary_objective_red players
bossbar set minecraft:point_capture_red players
bossbar set minecraft:point_capture_blue players
bossbar set minecraft:secondary_objective value 0
bossbar set minecraft:point_capture_red value 0
bossbar set minecraft:point_capture_blue value 0
# clear les bossbar liées aux objectifs secondaires

execute if score selected_map variables matches 3 run clone 316 128 3 326 133 13 316 146 3
execute if score selected_map variables matches 3 as @a at @s run playsound minecraft:block.beacon.activate master @s 321 148 8 100 0
# si on est sur usine -> rallume le générateur