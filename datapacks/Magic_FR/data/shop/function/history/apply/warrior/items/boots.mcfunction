# appelee par warrior si @s n'a plus le meme niveau de boots
## remet a jour uniquement le slot boots du guerrier

execute if score @s boots matches 0 run function stuff:stuff_warrior/boots/lvl0
execute if score @s boots matches 1 run function stuff:stuff_warrior/boots/lvl1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 2 run function stuff:stuff_warrior/boots/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 3 run function stuff:stuff_warrior/boots/lvl3 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 4 run function stuff:stuff_warrior/boots/lvl4 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 5 run function stuff:stuff_warrior/boots/lvl5 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 6 run function stuff:stuff_warrior/boots/lvl6 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 7 run function stuff:stuff_warrior/boots/lvl7 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 8 run function stuff:stuff_warrior/boots/lvl8 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 9 run function stuff:stuff_warrior/boots/lvl9 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s boots matches 10 run function stuff:stuff_warrior/boots/lvl10 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s team_side matches 0 run item modify entity @s armor.feet minecraft:armor_change/no_team/warrior
execute if score @s team_side matches 1 run item modify entity @s armor.feet minecraft:armor_change/blue/warrior
execute if score @s team_side matches 2 run item modify entity @s armor.feet minecraft:armor_change/red/warrior
