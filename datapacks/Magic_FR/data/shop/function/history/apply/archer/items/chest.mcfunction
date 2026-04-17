# appelée par archer si @s n'a plus le même niveau de chest
## remet a jour uniquement le slot chest de l'archer

execute if score @s chest matches 0 run function stuff:stuff_archer/chest/lvl0
execute if score @s chest matches 1 run function stuff:stuff_archer/chest/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 2 run function stuff:stuff_archer/chest/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 3 run function stuff:stuff_archer/chest/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 4 run function stuff:stuff_archer/chest/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 5 run function stuff:stuff_archer/chest/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 6 run function stuff:stuff_archer/chest/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 7 run function stuff:stuff_archer/chest/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 8 run function stuff:stuff_archer/chest/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 9 run function stuff:stuff_archer/chest/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 10 run function stuff:stuff_archer/chest/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s team_side matches 0 run item modify entity @s armor.chest minecraft:armor_change/no_team/archer
execute if score @s team_side matches 1 run item modify entity @s armor.chest minecraft:armor_change/blue/archer
execute if score @s team_side matches 2 run item modify entity @s armor.chest minecraft:armor_change/red/archer