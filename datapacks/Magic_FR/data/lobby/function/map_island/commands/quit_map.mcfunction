## appelée par lobby:loop si @s a trigger le /trigger quit
# permet de quitter la visite de map


scoreboard players reset @s quit
scoreboard players reset @s gamemode
scoreboard players reset @s blue_spawn
scoreboard players reset @s blue_flag
scoreboard players reset @s red_spawn
scoreboard players reset @s red_flag

function lobby:hotbar_menu/main/give_items

gamemode adventure @s[gamemode=spectator]
tp @s 76 99 0 -90 0

tag @s remove spec_map
tag @s remove spec_map1
tag @s remove spec_map2
tag @s remove spec_map3
tag @s remove spec_map4
tag @s remove spec_map5
tag @s remove spec_map6
effect clear @s resistance

execute as @s[tag=sugar_way] run function ctf:maps_systems/candyworld/sugar_way/exit_sugar_way
execute as @s[tag=gingerbread_passenger_blue] run function ctf:maps_systems/candyworld/gingerbread/clear_gingerbread_effect
execute as @s[tag=gingerbread_passenger_red] run function ctf:maps_systems/candyworld/gingerbread/clear_gingerbread_effect


function main:gui/display/refresh_gui
# actualise le gui de tous (car plus besoin de l'interface spec pour @s)

execute store result score $map_1 map_spectator run execute if entity @a[tag=spec_map1]
execute store result score $map_2 map_spectator run execute if entity @a[tag=spec_map2]
execute store result score $map_3 map_spectator run execute if entity @a[tag=spec_map3]
execute store result score $map_4 map_spectator run execute if entity @a[tag=spec_map4]
execute store result score $map_5 map_spectator run execute if entity @a[tag=spec_map5]
execute store result score $map_6 map_spectator run execute if entity @a[tag=spec_map6]
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100 1

execute unless entity @s[nbt={Fire:-20s}] run effect give @s minecraft:fire_resistance 1 0 true
#si le joueur brule -> le rend insencible au feu avant de le heal

execute unless entity @s[nbt={Fire:-20s}] run schedule function lobby:map_island/clear_fire 1t
# si le joueur est en feu -> l'éteint