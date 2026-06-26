## appelée par setup_bossbar
# permet de setup le nom de la map pour @s selon sa trad

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data
# recup les data de l'enderchest (storage perso) et les met dans un storage

$execute if score selected_map variables matches 1 run data modify storage personnal_storage.temp storage.map_name set value {"text":"$(tr_gui_map_1_name)","color":"aqua","bold":true}
$execute if score selected_map variables matches 2 run data modify storage personnal_storage.temp storage.map_name set value {"text":"$(tr_gui_map_2_name)","color":"red","bold":true}
$execute if score selected_map variables matches 3 run data modify storage personnal_storage.temp storage.map_name set value {"text":"$(tr_gui_map_3_name)","color":"dark_red","bold":true}
$execute if score selected_map variables matches 4 run data modify storage personnal_storage.temp storage.map_name set value {"text":"$(tr_gui_map_4_name)","color":"dark_red","bold":true}
$execute if score selected_map variables matches 5 run data modify storage personnal_storage.temp storage.map_name set value {"text":"$(tr_gui_map_5_name)","color":"gray","bold":true}
$execute if score selected_map variables matches 6 run data modify storage personnal_storage.temp storage.map_name set value {"text":"$(tr_gui_map_6_name)","color":"light_purple","bold":true}

function main:personnal_data/save_new_data with storage personnal_storage.temp
# remet son storage perso dans son enderchest
