# Reapplique le trim de l'archer sur la piece d'armure qui vient d'etre achetee.

execute if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"chest"} if score @s team_side matches 0 run item modify entity @s armor.chest minecraft:armor_change/no_team/archer
execute if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"chest"} if score @s team_side matches 1 run item modify entity @s armor.chest minecraft:armor_change/blue/archer
execute if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"chest"} if score @s team_side matches 2 run item modify entity @s armor.chest minecraft:armor_change/red/archer

execute if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"legs"} if score @s team_side matches 0 run item modify entity @s armor.legs minecraft:armor_change/no_team/archer
execute if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"legs"} if score @s team_side matches 1 run item modify entity @s armor.legs minecraft:armor_change/blue/archer
execute if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"legs"} if score @s team_side matches 2 run item modify entity @s armor.legs minecraft:armor_change/red/archer

execute if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"boots"} if score @s team_side matches 0 run item modify entity @s armor.feet minecraft:armor_change/no_team/archer
execute if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"boots"} if score @s team_side matches 1 run item modify entity @s armor.feet minecraft:armor_change/blue/archer
execute if data entity @s EnderItems[0].components.minecraft:custom_data{item_category:"boots"} if score @s team_side matches 2 run item modify entity @s armor.feet minecraft:armor_change/red/archer
