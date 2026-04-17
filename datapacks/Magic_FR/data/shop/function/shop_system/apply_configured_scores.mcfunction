## appelee pendant un achat valide
# applique les scores optionnels definis sur l'entree shop_data achetee

$execute if data storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_$(item_level).maxarrow store result score @s maxarrow run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_$(item_level).maxarrow
$execute if data storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_$(item_level).maxarrow store result score @s arrow run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_$(item_level).maxarrow
$execute if data storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_$(item_level).maxarrow run function stuff:stuff_archer/arrows/classics/lvlx with entity @s EnderItems[0].components.minecraft:custom_data

$execute if data storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_$(item_level).explo_max_range_a store result score @s explo_max_range_a run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_$(item_level).explo_max_range_a

$execute if data storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_$(item_level).weapon1_max_range_m store result score @s weapon1_max_range_m run data get storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_$(item_level).weapon1_max_range_m
$execute if data storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_$(item_level).weapon1_max_range_m run function spells:spellsystem/weapon1_m/refresh_timer/100