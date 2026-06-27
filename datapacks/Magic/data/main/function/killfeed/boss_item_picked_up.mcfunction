## appelée par les fonctions picked_up_item des trois boss
# permet de sauvegarder le nom du ramasseur et d'annoncer le ramassage dans la langue de chaque joueur

execute if score @s Player matches 1 run data modify storage main:killfeed picker_name set from storage main:killfeed name.1
execute if score @s Player matches 2 run data modify storage main:killfeed picker_name set from storage main:killfeed name.2
execute if score @s Player matches 3 run data modify storage main:killfeed picker_name set from storage main:killfeed name.3
execute if score @s Player matches 4 run data modify storage main:killfeed picker_name set from storage main:killfeed name.4
execute if score @s Player matches 5 run data modify storage main:killfeed picker_name set from storage main:killfeed name.5
execute if score @s Player matches 6 run data modify storage main:killfeed picker_name set from storage main:killfeed name.6
execute if score @s Player matches 7 run data modify storage main:killfeed picker_name set from storage main:killfeed name.7
execute if score @s Player matches 8 run data modify storage main:killfeed picker_name set from storage main:killfeed name.8
execute if score @s Player matches 9 run data modify storage main:killfeed picker_name set from storage main:killfeed name.9
execute if score @s Player matches 10 run data modify storage main:killfeed picker_name set from storage main:killfeed name.10
execute if score @s Player matches 11 run data modify storage main:killfeed picker_name set from storage main:killfeed name.11
execute if score @s Player matches 12 run data modify storage main:killfeed picker_name set from storage main:killfeed name.12

execute as @a run function main:killfeed/messages/boss_item_picked_up with entity @s EnderItems[0].components.minecraft:custom_data
