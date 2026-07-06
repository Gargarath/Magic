## appelée quand la carte du lobby FFA ou la langue de @s change
# Sauvegarde le nom traduit de map_1 dans les données personnelles de @s.

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data

$execute if score map_1 map_selection matches 0 run data modify storage personnal_storage.temp storage.lobby_map_name set value {"text":"$(tr_gui_map_random_name)","color":"light_purple","bold":true}
$execute if score map_1 map_selection matches 1 run data modify storage personnal_storage.temp storage.lobby_map_name set value {"text":"$(tr_gui_map_1_name)","color":"aqua","bold":true}
$execute if score map_1 map_selection matches 2 run data modify storage personnal_storage.temp storage.lobby_map_name set value {"text":"$(tr_gui_map_2_name)","color":"red","bold":true}
$execute if score map_1 map_selection matches 3 run data modify storage personnal_storage.temp storage.lobby_map_name set value {"text":"$(tr_gui_map_3_name)","color":"dark_red","bold":true}
$execute if score map_1 map_selection matches 4 run data modify storage personnal_storage.temp storage.lobby_map_name set value {"text":"$(tr_gui_map_4_name)","color":"dark_red","bold":true}
$execute if score map_1 map_selection matches 5 run data modify storage personnal_storage.temp storage.lobby_map_name set value {"text":"$(tr_gui_map_5_name)","color":"gray","bold":true}
$execute if score map_1 map_selection matches 6 run data modify storage personnal_storage.temp storage.lobby_map_name set value {"text":"$(tr_gui_map_6_name)","color":"light_purple","bold":true}
$execute if score map_1 map_selection matches 7 run data modify storage personnal_storage.temp storage.lobby_map_name set value {"text":"$(tr_gui_map_7_name)","color":"dark_red","bold":true}

function main:personnal_data/save_new_data with storage personnal_storage.temp
