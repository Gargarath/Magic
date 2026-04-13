# appelée par initialisation
# stock les infos de items (utilisé par le shop) dans le storage perso de @s

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data
# recup les data de l'enderchest (storage perso) et les met dans un storage

function main:personnal_data/shop/merge_storages with storage shop_data
# merge le storage stuff avec son storage perso
function main:personnal_data/save_new_data with storage personnal_storage.temp
# remet son storage perso dans son enderchest

tellraw @s {entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_changed_language","bold":false,"color":"yellow"}
# indique à @s qu'il a changé de langue (selon sa langue)