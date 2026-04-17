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

execute if score @s Player matches 1 if data entity @n[type=minecraft:interaction,tag=shop_undo_1] interaction run return run function shop:history/used_undo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 2 if data entity @n[type=minecraft:interaction,tag=shop_undo_2] interaction run return run function shop:history/used_undo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 3 if data entity @n[type=minecraft:interaction,tag=shop_undo_3] interaction run return run function shop:history/used_undo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 4 if data entity @n[type=minecraft:interaction,tag=shop_undo_4] interaction run return run function shop:history/used_undo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 5 if data entity @n[type=minecraft:interaction,tag=shop_undo_5] interaction run return run function shop:history/used_undo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 6 if data entity @n[type=minecraft:interaction,tag=shop_undo_6] interaction run return run function shop:history/used_undo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 7 if data entity @n[type=minecraft:interaction,tag=shop_undo_7] interaction run return run function shop:history/used_undo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 8 if data entity @n[type=minecraft:interaction,tag=shop_undo_8] interaction run return run function shop:history/used_undo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 9 if data entity @n[type=minecraft:interaction,tag=shop_undo_9] interaction run return run function shop:history/used_undo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 10 if data entity @n[type=minecraft:interaction,tag=shop_undo_10] interaction run return run function shop:history/used_undo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 11 if data entity @n[type=minecraft:interaction,tag=shop_undo_11] interaction run return run function shop:history/used_undo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 12 if data entity @n[type=minecraft:interaction,tag=shop_undo_12] interaction run return run function shop:history/used_undo with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s Player matches 1 if data entity @n[type=minecraft:interaction,tag=shop_redo_1] interaction run return run function shop:history/used_redo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 2 if data entity @n[type=minecraft:interaction,tag=shop_redo_2] interaction run return run function shop:history/used_redo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 3 if data entity @n[type=minecraft:interaction,tag=shop_redo_3] interaction run return run function shop:history/used_redo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 4 if data entity @n[type=minecraft:interaction,tag=shop_redo_4] interaction run return run function shop:history/used_redo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 5 if data entity @n[type=minecraft:interaction,tag=shop_redo_5] interaction run return run function shop:history/used_redo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 6 if data entity @n[type=minecraft:interaction,tag=shop_redo_6] interaction run return run function shop:history/used_redo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 7 if data entity @n[type=minecraft:interaction,tag=shop_redo_7] interaction run return run function shop:history/used_redo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 8 if data entity @n[type=minecraft:interaction,tag=shop_redo_8] interaction run return run function shop:history/used_redo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 9 if data entity @n[type=minecraft:interaction,tag=shop_redo_9] interaction run return run function shop:history/used_redo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 10 if data entity @n[type=minecraft:interaction,tag=shop_redo_10] interaction run return run function shop:history/used_redo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 11 if data entity @n[type=minecraft:interaction,tag=shop_redo_11] interaction run return run function shop:history/used_redo with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 12 if data entity @n[type=minecraft:interaction,tag=shop_redo_12] interaction run return run function shop:history/used_redo with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s Player matches 1 if data entity @n[type=minecraft:interaction,tag=shop_ready_1] interaction run return run function shop:ready_button/used_button with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 2 if data entity @n[type=minecraft:interaction,tag=shop_ready_2] interaction run return run function shop:ready_button/used_button with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 3 if data entity @n[type=minecraft:interaction,tag=shop_ready_3] interaction run return run function shop:ready_button/used_button with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 4 if data entity @n[type=minecraft:interaction,tag=shop_ready_4] interaction run return run function shop:ready_button/used_button with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 5 if data entity @n[type=minecraft:interaction,tag=shop_ready_5] interaction run return run function shop:ready_button/used_button with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 6 if data entity @n[type=minecraft:interaction,tag=shop_ready_6] interaction run return run function shop:ready_button/used_button with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 7 if data entity @n[type=minecraft:interaction,tag=shop_ready_7] interaction run return run function shop:ready_button/used_button with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 8 if data entity @n[type=minecraft:interaction,tag=shop_ready_8] interaction run return run function shop:ready_button/used_button with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 9 if data entity @n[type=minecraft:interaction,tag=shop_ready_9] interaction run return run function shop:ready_button/used_button with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 10 if data entity @n[type=minecraft:interaction,tag=shop_ready_10] interaction run return run function shop:ready_button/used_button with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 11 if data entity @n[type=minecraft:interaction,tag=shop_ready_11] interaction run return run function shop:ready_button/used_button with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s Player matches 12 if data entity @n[type=minecraft:interaction,tag=shop_ready_12] interaction run return run function shop:ready_button/used_button with entity @s EnderItems[0].components.minecraft:custom_data