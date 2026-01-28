## appelé par spec_map si @s a cliqué sur la map4
# permet de visiter la map volcan

scoreboard players enable @s quit
scoreboard players enable @s gamemode
scoreboard players enable @s blue_spawn
scoreboard players enable @s blue_flag
scoreboard players enable @s red_spawn
scoreboard players enable @s red_flag
# active les commandes

function lobby:hotbar_menu/map_visit/give_items
# donne les objets de visite de map à @s

gamemode spectator @s
tag @s add spec_map
tag @s add spec_map4
effect give @s resistance infinite 200 true
tp @s -611 160 483 319 15
function main:gui/display/refresh_gui
# actualise le gui de tous (car besoin de l'interface spec pour @s)

execute store result score $map_4 map_spectator run execute if entity @a[tag=spec_map4]
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100 1