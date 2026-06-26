# appelée par le shop
# stock les infos de la quantité de PH dans le storage perso de @s

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data
# recup les data de l'enderchest (storage perso) et les met dans un storage
execute store result storage temp:ph data.PH int 1 run scoreboard players get @s PH
function main:personnal_data/merge_storages with storage temp:ph
# ajoute l'info de PH dans le storage de @s
function main:personnal_data/save_new_data with storage personnal_storage.temp
# remet son storage perso dans son enderchest