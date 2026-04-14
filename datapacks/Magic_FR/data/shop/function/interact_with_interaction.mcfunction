## appelée par interact_with_shop si @s clique une interaction dans le shop
# permet de faire une action selon ce qu'il a cliqué

advancement revoke @s only main:interact_with_shop

execute if entity @s[tag=look_at_weapon1] if predicate shop/look_at_weapon1 run return run function shop:shop_system/test with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[tag=look_at_chest] if predicate shop/look_at_chest run return run function shop:shop_system/test with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[tag=look_at_legs] if predicate shop/look_at_legs run return run function shop:shop_system/test with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[tag=look_at_boots] if predicate shop/look_at_boots run return run function shop:shop_system/test with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[tag=look_at_spell1] if predicate shop/look_at_spell1 run return run function shop:shop_system/test with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[tag=look_at_spell2] if predicate shop/look_at_spell2 run return run function shop:shop_system/test with entity @s EnderItems[0].components.minecraft:custom_data
execute if entity @s[tag=look_at_spell3] if predicate shop/look_at_spell3 run return run function shop:shop_system/test with entity @s EnderItems[0].components.minecraft:custom_data