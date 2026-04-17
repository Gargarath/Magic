# appelee par warrior si @s n'a plus le meme niveau de chest
## remet a jour uniquement le slot chest du guerrier

execute if score @s chest matches 0 run function stuff:stuff_warrior/chest/lvl0 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 1 run function stuff:stuff_warrior/chest/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 2 run function stuff:stuff_warrior/chest/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 3 run function stuff:stuff_warrior/chest/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 4 run function stuff:stuff_warrior/chest/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 5 run function stuff:stuff_warrior/chest/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 6 run function stuff:stuff_warrior/chest/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 7 run function stuff:stuff_warrior/chest/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 8 run function stuff:stuff_warrior/chest/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 9 run function stuff:stuff_warrior/chest/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s chest matches 10 run function stuff:stuff_warrior/chest/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s team_side matches 0 run item modify entity @s armor.chest minecraft:armor_change/no_team/warrior
execute if score @s team_side matches 1 run item modify entity @s armor.chest minecraft:armor_change/blue/warrior
execute if score @s team_side matches 2 run item modify entity @s armor.chest minecraft:armor_change/red/warrior

function shop:refresh/items/chest with entity @s EnderItems[0].components.minecraft:custom_data