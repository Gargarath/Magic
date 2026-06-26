## appelée par les fonctions qui reconstruisent l'inventaire de @s
## permet de donner les items du menu d'inventaire

execute if score @s opt_lang matches 0 run function main:inventory_menu/give_language_en with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s opt_lang matches 1 run function main:inventory_menu/give_language_fr with entity @s EnderItems[0].components.minecraft:custom_data
