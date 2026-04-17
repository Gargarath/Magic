# appelée par archer si @s n'a plus le même niveau de boots
## remet a jour uniquement le slot boots de l'archer

execute if score @s boots matches 0 run function stuff:stuff_archer/boots/lvl0
execute if score @s boots matches 1 run function stuff:stuff_archer/boots/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 2 run function stuff:stuff_archer/boots/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 3 run function stuff:stuff_archer/boots/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 4 run function stuff:stuff_archer/boots/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 5 run function stuff:stuff_archer/boots/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 6 run function stuff:stuff_archer/boots/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 7 run function stuff:stuff_archer/boots/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 8 run function stuff:stuff_archer/boots/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 9 run function stuff:stuff_archer/boots/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 10 run function stuff:stuff_archer/boots/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s team_side matches 0 run item modify entity @s armor.feet minecraft:armor_change/no_team/archer
execute if score @s team_side matches 1 run item modify entity @s armor.feet minecraft:armor_change/blue/archer
execute if score @s team_side matches 2 run item modify entity @s armor.feet minecraft:armor_change/red/archer