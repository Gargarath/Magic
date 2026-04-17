# appelee par mage si @s n'a plus le meme niveau de boots
## remet a jour uniquement le slot boots du mage

execute if score @s boots matches 0 run function stuff:stuff_mage/boots/lvl0
execute if score @s boots matches 1 run function stuff:stuff_mage/boots/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 2 run function stuff:stuff_mage/boots/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 3 run function stuff:stuff_mage/boots/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 4 run function stuff:stuff_mage/boots/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 5 run function stuff:stuff_mage/boots/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 6 run function stuff:stuff_mage/boots/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 7 run function stuff:stuff_mage/boots/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 8 run function stuff:stuff_mage/boots/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 9 run function stuff:stuff_mage/boots/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 10 run function stuff:stuff_mage/boots/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s team_side matches 0 run item modify entity @s armor.feet minecraft:armor_change/no_team/mage
execute if score @s team_side matches 1 run item modify entity @s armor.feet minecraft:armor_change/blue/mage
execute if score @s team_side matches 2 run item modify entity @s armor.feet minecraft:armor_change/red/mage
