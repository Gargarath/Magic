# appelee par mage si @s n'a plus le meme niveau de legs
## remet a jour uniquement le slot legs du mage

execute if score @s legs matches 0 run function stuff:stuff_mage/legs/lvl0
execute if score @s legs matches 1 run function stuff:stuff_mage/legs/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 2 run function stuff:stuff_mage/legs/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 3 run function stuff:stuff_mage/legs/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 4 run function stuff:stuff_mage/legs/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 5 run function stuff:stuff_mage/legs/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 6 run function stuff:stuff_mage/legs/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 7 run function stuff:stuff_mage/legs/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 8 run function stuff:stuff_mage/legs/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 9 run function stuff:stuff_mage/legs/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s legs matches 10 run function stuff:stuff_mage/legs/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s team_side matches 0 run item modify entity @s armor.legs minecraft:armor_change/no_team/mage
execute if score @s team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/mage
execute if score @s team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/mage
say 1