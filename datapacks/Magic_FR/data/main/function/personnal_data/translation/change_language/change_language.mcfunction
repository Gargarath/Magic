# change le langage de @s

scoreboard players add @s opt_lang 1
execute if score @s opt_lang matches 2 run scoreboard players set @s opt_lang 0

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data
# recup les data de l'enderchest (storage perso) et les met dans un storage

execute if score @s opt_lang matches 0 run data modify storage temp:language translate set from storage strings en_en
execute if score @s opt_lang matches 1 run data modify storage temp:language translate set from storage strings fr_fr
# met la trad de @s dans un storage selon sa langue

function main:personnal_data/translation/change_language/merge_storages with storage temp:language
# merge le storage avec les trad de @s avec son storage perso
function main:personnal_data/save_new_data with storage personnal_storage.temp
# remet son storage perso dans son enderchest

function main:personnal_data/translation/change_language/refresh_language
# actualise les textes visibles de @s selon sa nouvelle langue

tellraw @s {entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.tr_changed_language","bold":false,"color":"yellow"}
# indique à @s qu'il a changé de langue (selon sa langue)
