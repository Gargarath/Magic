# Permet de redonner son stuff au mage si il drop un objet

tag @s remove save_inventory
tag @s add inventory_rebuilding

function main:items_positions/cleanup_managed_items
scoreboard players set @s usespell 0
tag @s remove can_tp_m
execute as @s run function stuff:stuff_mage/stuffmage
# Clear @s et lui redonne son stuff

item replace entity @s[tag=Has_Blue_flag] armor.head from block 13 97 11 container.6
item replace entity @s[tag=Has_Blue_flag] weapon.offhand from block 13 97 11 container.6
# redonne le drapeau bleu à @s
item replace entity @s[tag=Has_Red_flag] armor.head from block 13 97 11 container.7
item replace entity @s[tag=Has_Red_flag] weapon.offhand from block 13 97 11 container.7
# redonne le drapeau rouge à @s

scoreboard players set @s drop_item 0
# Reset le score de drop_item de @s (pour éviter d'appeler cette fonction en boucle)

execute if score @s InShop matches 1 run function shop:cant_usespell
execute if score @s InShop matches 0 run function stuff:stuff_mage/keybind1

tag @s remove inventory_rebuilding
tag @s add save_inventory
