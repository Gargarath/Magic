# appelee par warrior si @s n'a plus le meme niveau de legs
## remet a jour uniquement le slot legs du guerrier

execute if score @s legs matches 0 run function stuff:stuff_warrior/legs/lvl0
execute if score @s legs matches 1 run function stuff:stuff_warrior/legs/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 2 run function stuff:stuff_warrior/legs/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 3 run function stuff:stuff_warrior/legs/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 4 run function stuff:stuff_warrior/legs/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 5 run function stuff:stuff_warrior/legs/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 6 run function stuff:stuff_warrior/legs/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 7 run function stuff:stuff_warrior/legs/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 8 run function stuff:stuff_warrior/legs/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 9 run function stuff:stuff_warrior/legs/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 10 run function stuff:stuff_warrior/legs/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s team_side matches 0 run item modify entity @s armor.legs minecraft:armor_change/no_team/warrior
execute if score @s team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/warrior
execute if score @s team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/warrior
