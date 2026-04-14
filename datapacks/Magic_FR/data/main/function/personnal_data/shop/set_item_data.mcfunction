# appelée par le shop
# stock les infos de l'item appelé par le shop dans le storage perso de @s

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data
# recup les data de l'enderchest (storage perso) et les met dans un storage
$data modify storage temp:item data set from storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_$(level)
$data modify storage temp:item data.item_name set from entity @s EnderItems[0].components.minecraft:custom_data.tr_$(class)_$(item_category)_$(level)_name
$data modify storage temp:item data.item_category set value "$(item_category)"
$data modify storage temp:item data.shop_$(item_category)_price set from storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_$(level).price

data modify storage temp:item data.lore set value []
data modify storage temp:item index set value 0
scoreboard players set @s shop_lore_line 0
function main:personnal_data/shop/resolve_item_lore_entry with storage temp:item
function main:personnal_data/merge_storages with storage temp:item
# ajoute les infos de lvl, nom, item avec son storage perso
function main:personnal_data/save_new_data with storage personnal_storage.temp
# remet son storage perso dans son enderchest
