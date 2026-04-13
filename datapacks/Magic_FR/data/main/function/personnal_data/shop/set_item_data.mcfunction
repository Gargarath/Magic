# appelée par le shop
# stock les infos de l'item appelé par le shop dans le storage perso de @s

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data
# recup les data de l'enderchest (storage perso) et les met dans un storage
$data modify storage temp:item data set from storage minecraft:shop_data stuff.stuff_$(class)_$(item_category)_$(level)
$data modify storage temp:item data.item_category set value "$(item_category)"
function main:personnal_data/merge_storages with storage temp:item
# ajoute les infos de lvl, nom, item avec son storage perso
function main:personnal_data/save_new_data with storage personnal_storage.temp
# remet son storage perso dans son enderchest