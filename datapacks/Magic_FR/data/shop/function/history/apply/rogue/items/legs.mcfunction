# appelee par rogue si @s n'a plus le meme niveau de legs
## remet a jour uniquement le slot legs du rogue

execute if score @s legs matches 0 run function stuff:stuff_rogue/legs/lvl0
execute if score @s legs matches 1 run function stuff:stuff_rogue/legs/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 2 run function stuff:stuff_rogue/legs/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 3 run function stuff:stuff_rogue/legs/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 4 run function stuff:stuff_rogue/legs/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 5 run function stuff:stuff_rogue/legs/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 6 run function stuff:stuff_rogue/legs/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 7 run function stuff:stuff_rogue/legs/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 8 run function stuff:stuff_rogue/legs/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 9 run function stuff:stuff_rogue/legs/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 10 run function stuff:stuff_rogue/legs/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!invisibility_r] team_side matches 0 run item modify entity @s armor.legs minecraft:armor_change/no_team/rogue
execute if score @s[tag=!invisibility_r] team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/rogue
execute if score @s[tag=!invisibility_r] team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/rogue
