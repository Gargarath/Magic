# Applique la traduction correspondant a opt_lang sans basculer sa valeur.

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s opt_lang matches 0 run data modify storage temp:language translate set from storage strings en_en
execute if score @s opt_lang matches 1 run data modify storage temp:language translate set from storage strings fr_fr

function main:personnal_data/translation/change_language/merge_storages with storage temp:language
function main:personnal_data/save_new_data with storage personnal_storage.temp
