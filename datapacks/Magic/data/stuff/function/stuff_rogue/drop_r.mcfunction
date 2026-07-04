# Permet de redonner son stuff à l'assassin si il drop un objet

tag @s remove save_inventory
tag @s add inventory_rebuilding

scoreboard players set @s usespell 0
scoreboard players set @s usespell3_r 0
function main:items_positions/repair_missing_items

execute if entity @s[tag=Has_Blue_flag] run function stuff:generic_stuff/blue_flag with entity @s EnderItems[0].components.minecraft:custom_data
# redonne le drapeau bleu à @s
execute if entity @s[tag=Has_Red_flag] run function stuff:generic_stuff/red_flag with entity @s EnderItems[0].components.minecraft:custom_data
# redonne le drapeau rouge à @s

scoreboard players set @s drop_item 0
# Reset le score de drop_item de @s (pour éviter d'appeler cette fonction en boucle)

execute if score @s InShop matches 1 run function shop:cant_usespell
execute if score @s InShop matches 0 run function stuff:stuff_rogue/keybind1

tag @s remove inventory_rebuilding
tag @s add save_inventory
