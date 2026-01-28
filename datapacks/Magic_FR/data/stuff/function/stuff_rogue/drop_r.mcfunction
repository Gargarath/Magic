# Permet de redonner son stuff à l'assassin si il drop un objet

tag @s remove save_inventory

clear @s
scoreboard players set @s usespell 0
scoreboard players set @s usespell3_r 0
execute as @s[tag=!invisibility_r] run function stuff:stuff_rogue/stuffrogue
execute as @s[tag=invisibility_r] run function stuff:stuff_rogue/stuffrogue_invisible
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
execute if score @s InShop matches 0 run function stuff:stuff_rogue/keybind1

tag @s add save_inventory