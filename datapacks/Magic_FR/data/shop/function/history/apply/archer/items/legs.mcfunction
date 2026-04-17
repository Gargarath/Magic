# appelée par archer si @s n'a plus le même niveau de legs
## remet a jour uniquement le slot legs de l'archer

execute if score @s legs matches 0 run function stuff:stuff_archer/legs/lvl0
execute if score @s legs matches 1 run function stuff:stuff_archer/legs/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 2 run function stuff:stuff_archer/legs/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 3 run function stuff:stuff_archer/legs/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 4 run function stuff:stuff_archer/legs/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 5 run function stuff:stuff_archer/legs/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 6 run function stuff:stuff_archer/legs/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 7 run function stuff:stuff_archer/legs/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 8 run function stuff:stuff_archer/legs/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 9 run function stuff:stuff_archer/legs/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 10 run function stuff:stuff_archer/legs/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s team_side matches 0 run item modify entity @s armor.legs minecraft:armor_change/no_team/archer
execute if score @s team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/archer
execute if score @s team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/archer

function shop:refresh/items/legs with entity @s EnderItems[0].components.minecraft:custom_data