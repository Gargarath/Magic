# change le langage de @s

scoreboard players add @s opt_lang 1
execute if score @s opt_lang matches 2 run scoreboard players set @s opt_lang 0

execute if score @s opt_lang matches 0 run function main:translation/change_language/refresh_language with storage strings en_en
execute if score @s opt_lang matches 1 run function main:translation/change_language/refresh_language with storage strings fr_fr

tellraw @s {entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.translate.changed_language","bold":false,"color":"yellow"}