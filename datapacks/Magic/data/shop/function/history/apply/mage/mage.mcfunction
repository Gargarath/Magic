## applique uniquement les changements shop utiles au mage

execute unless score @s weapon1 = @s shop_prev_weapon1 run function shop:history/apply/mage/items/weapon1
execute unless score @s weapon1_max_range_m = @s shop_prev_weapon1_max_range_m run function shop:history/apply/mage/items/weapon1

execute unless score @s spell1 = @s shop_prev_spell1 run function shop:history/apply/mage/items/spell1 with entity @s EnderItems[0].components.minecraft:custom_data

execute unless score @s spell2 = @s shop_prev_spell2 run function shop:history/apply/mage/items/spell2 with entity @s EnderItems[0].components.minecraft:custom_data

execute unless score @s spell3 = @s shop_prev_spell3 run function shop:history/apply/mage/items/spell3 with entity @s EnderItems[0].components.minecraft:custom_data

execute unless score @s chest = @s shop_prev_chest run function shop:history/apply/mage/items/chest

execute unless score @s legs = @s shop_prev_legs run function shop:history/apply/mage/items/legs

execute unless score @s boots = @s shop_prev_boots run function shop:history/apply/mage/items/boots

function shop:apply_ffa_player_trim {class:"mage"}

function stuff:stuff_mage/save_stuff_as_storage/determine_player
