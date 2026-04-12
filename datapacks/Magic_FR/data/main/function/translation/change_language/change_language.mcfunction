# change le langage de @s

scoreboard players add @s opt_lang 1
execute if score @s opt_lang matches 2 run scoreboard players set @s opt_lang 0

data modify storage personnal_storage.temp storage set from entity @s EnderItems[0].components.minecraft:custom_data.translate


execute if score @s opt_lang matches 0 run function main:translation/change_language/modify_storage {lang:"en_en"}
execute if score @s opt_lang matches 1 run function main:translation/change_language/modify_storage {lang:"fr_fr"}

function main:translation/change_language/save_storage_to_item with storage personnal_storage.temp


tellraw @s {entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.translate.tr_changed_language","bold":false,"color":"yellow"}