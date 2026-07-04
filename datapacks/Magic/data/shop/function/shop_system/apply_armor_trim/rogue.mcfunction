# Reapplique le trim du rogue sur la piece d'armure qui vient d'etre achetee.
# Pendant son invisibilite, son armure ne doit pas etre modifiee.

execute if entity @s[tag=!invisibility_r] if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"chest"} if score @s team_side matches 0 run item modify entity @s armor.chest minecraft:armor_change/no_team/rogue
execute if entity @s[tag=!invisibility_r] if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"chest"} if score @s team_side matches 1 run item modify entity @s armor.chest minecraft:armor_change/blue/rogue
execute if entity @s[tag=!invisibility_r] if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"chest"} if score @s team_side matches 2 run item modify entity @s armor.chest minecraft:armor_change/red/rogue

execute if entity @s[tag=!invisibility_r] if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"legs"} if score @s team_side matches 0 run item modify entity @s armor.legs minecraft:armor_change/no_team/rogue
execute if entity @s[tag=!invisibility_r] if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"legs"} if score @s team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/rogue
execute if entity @s[tag=!invisibility_r] if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"legs"} if score @s team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/rogue

execute if entity @s[tag=!invisibility_r] if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"boots"} if score @s team_side matches 0 run item modify entity @s armor.feet minecraft:armor_change/no_team/rogue
execute if entity @s[tag=!invisibility_r] if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"boots"} if score @s team_side matches 1 run item modify entity @s armor.feet minecraft:armor_change/blue/rogue
execute if entity @s[tag=!invisibility_r] if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"boots"} if score @s team_side matches 2 run item modify entity @s armor.feet minecraft:armor_change/red/rogue
