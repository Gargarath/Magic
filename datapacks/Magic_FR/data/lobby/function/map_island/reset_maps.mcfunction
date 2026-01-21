## appelée par start_game quand la partie se lance ou admin_stop_game en cas de reset
# permet de clear les objets éducatif des maps et de virer les gens en visite de map

kill @e[tag=map_info]
# clear les indication de spawn et drapeaux

gamemode adventure @a[gamemode=spectator]
effect clear @a resistance

scoreboard players reset @a quit
scoreboard players reset @a blue_spawn
scoreboard players reset @a blue_flag
scoreboard players reset @a red_spawn
scoreboard players reset @a red_flag
# désactive les commandes

tag @a remove spec_map
tag @a remove spec_map1
tag @a remove spec_map2
tag @a remove spec_map3
tag @a remove spec_map4
tag @a remove spec_map5
tag @a remove spec_map6
scoreboard players set $map_1 map_spectator 0
scoreboard players set $map_2 map_spectator 0
scoreboard players set $map_3 map_spectator 0
scoreboard players set $map_4 map_spectator 0
scoreboard players set $map_5 map_spectator 0
scoreboard players set $map_6 map_spectator 0

function main:reset/reset_map/reset_map_pirate
function main:reset/reset_map/reset_map_graveyard
function main:reset/reset_map/reset_map_factory
function main:reset/reset_map/reset_map_volcano
function main:reset/reset_map/reset_map_ruin
function main:reset/reset_map/reset_map_candyworld