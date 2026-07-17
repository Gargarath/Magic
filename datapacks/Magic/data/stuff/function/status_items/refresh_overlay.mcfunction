# Priorite : hook > piege > brulure > gel > spawn > vide.

execute if entity @s[scores={freeze=-1,burning=-1,trapped=-1,hooked_w=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=!in_own_spawn] run function stuff:generic_stuff/empty_head
execute if entity @s[scores={freeze=-1,burning=-1,trapped=-1,hooked_w=-1},tag=!Has_Blue_flag,tag=!Has_Red_flag,tag=in_own_spawn] run function stuff:generic_stuff/spawn_overlay_head
execute if score @s freeze matches 0.. run function stuff:status_items/give_frozen_overlay with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s burning matches 0.. run function stuff:status_items/give_burning_overlay with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s trapped matches 0.. run function stuff:status_items/give_trapped_overlay with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s hooked_w matches 0.. run function stuff:status_items/give_hooked_overlay with entity @s EnderItems[0].components.minecraft:custom_data
