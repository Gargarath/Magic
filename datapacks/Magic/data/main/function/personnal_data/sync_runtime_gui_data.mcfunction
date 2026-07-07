# Called before GUI macro refreshes that need runtime player data.

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data
execute store result storage personnal_storage.temp storage.player int 1 run scoreboard players get @s Player
function main:personnal_data/save_new_data with storage personnal_storage.temp

execute if score ctf enable_loop matches 1 run function main:launch_arena/save_map_name with entity @s EnderItems[0].components.minecraft:custom_data
execute if score shop enable_loop matches 1 if score $show_next_map option_panel matches 0 run function main:launch_arena/hide_map_name
execute if score shop enable_loop matches 1 if score $show_next_map option_panel matches 1 run function main:launch_arena/save_map_name with entity @s EnderItems[0].components.minecraft:custom_data
