## appelée par lobby:loop si @s à jeté un item
## permet de lui reset son stuff

scoreboard players set @s drop_item 0

execute if score @s hotbar_menu matches 0 run function lobby:hotbar_menu/main/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s hotbar_menu matches 1 run function lobby:hotbar_menu/class_selector/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s hotbar_menu matches 2 run function lobby:hotbar_menu/team_selector/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s hotbar_menu matches 3 run function lobby:hotbar_menu/jump/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s hotbar_menu matches 4 run function lobby:hotbar_menu/island_selector/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s hotbar_menu matches 5 run function lobby:hotbar_menu/map_visit/give_items with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s hotbar_menu matches 6..8 run function lobby:hotbar_menu/color_picker/give_items with entity @s EnderItems[0].components.minecraft:custom_data