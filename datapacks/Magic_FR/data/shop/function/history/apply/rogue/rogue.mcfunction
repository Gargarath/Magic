## applique uniquement les changements shop utiles au rogue

execute unless score @s weapon1 = @s shop_prev_weapon1 run function shop:history/apply/rogue/items/weapon1

execute unless score @s spell1 = @s shop_prev_spell1 run function shop:history/apply/rogue/items/spell1 with entity @s EnderItems[0].components.minecraft:custom_data

execute unless score @s spell2 = @s shop_prev_spell2 run function shop:history/apply/rogue/items/spell2 with entity @s EnderItems[0].components.minecraft:custom_data

execute unless score @s spell3 = @s shop_prev_spell3 run function shop:history/apply/rogue/items/spell3 with entity @s EnderItems[0].components.minecraft:custom_data

execute unless score @s chest = @s shop_prev_chest run function shop:history/apply/rogue/items/chest

execute unless score @s legs = @s shop_prev_legs run function shop:history/apply/rogue/items/legs

execute unless score @s boots = @s shop_prev_boots run function shop:history/apply/rogue/items/boots

function stuff:stuff_rogue/save_stuff_as_storage/determine_player
