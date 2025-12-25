# Permet de redonner son stuff à l'archer si il drop un objet

tag @s remove save_inventory

clear @s
scoreboard players set @s usespell 0
execute as @s run function stuff:stuff_archer/stuffarcher
# Clear @s et lui redonne son stuff

item replace entity @s[tag=Has_Blue_flag] armor.head with blue_banner[custom_data={flag:1b},custom_model_data={strings:["blue_flag"]},custom_name={"bold":true,"color":"blue","text":"Drapeau bleu"},lore=[{"color":"green","text":"Rapportez le à votre base"},{"color":"green","text":"pour marquer un point !"}]] 1
item replace entity @s[tag=Has_Blue_flag] weapon.offhand with blue_banner[custom_data={flag:1b},custom_model_data={strings:["blue_flag"]},custom_name={"bold":true,"color":"blue","text":"Drapeau bleu"},lore=[{"color":"green","text":"Rapportez le à votre base"},{"color":"green","text":"pour marquer un point !"}]] 1
# redonne le drapeau à @s
item replace entity @s[tag=Has_Red_flag] armor.head with red_banner[custom_data={flag:1b},custom_model_data={strings:["red_flag"]},custom_name={"bold":true,"color":"red","text":"Drapeau rouge"},lore=[{"color":"green","text":"Rapportez le à votre base"},{"color":"green","text":"pour marquer un point !"}]] 1
item replace entity @s[tag=Has_Red_flag] weapon.offhand with red_banner[custom_data={flag:1b},custom_model_data={strings:["red_flag"]},custom_name={"bold":true,"color":"red","text":"Drapeau rouge"},lore=[{"color":"green","text":"Rapportez le à votre base"},{"color":"green","text":"pour marquer un point !"}]] 1
# redonne le drapeau à @s

scoreboard players set @s drop_item 0
# Reset le score de drop_item de @s (pour éviter d'appeler cette fonction en boucle)

execute if score @s InShop matches 1 run function shop:cant_usespell
execute if score @s InShop matches 0 run function stuff:stuff_archer/keybind1

tag @s add save_inventory