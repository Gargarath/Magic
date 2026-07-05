## appelée à la fin d'une partie FFA pour figer le nom traduit de la map

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data
data modify storage personnal_storage.temp storage.last_game_map_name set from storage personnal_storage.temp storage.map_name
function main:personnal_data/save_new_data with storage personnal_storage.temp
