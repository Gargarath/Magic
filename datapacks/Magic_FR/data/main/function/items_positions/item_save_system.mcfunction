## appelée par l'advancement item_save_system
## permet d'enregistrer les emplacements du stuff de @s selon sa classe

advancement revoke @s only main:item_save_system
tag @s remove save_inventory

execute as @s[tag=warrior] run function main:items_positions/warriors/check_items_positions
execute as @s[tag=archer] run function main:items_positions/archers/check_items_positions
execute as @s[tag=mage] run function main:items_positions/mages/check_items_positions
execute as @s[tag=rogue] run function main:items_positions/rogues/check_items_positions

clear @s[tag=Has_Blue_flag] blue_banner
item replace entity @s[tag=Has_Blue_flag] armor.head with blue_banner[custom_data={flag:1b},custom_model_data={strings:["blue_flag"]},custom_name={"bold":true,"color":"blue","text":"Drapeau bleu"},lore=[{"color":"green","text":"Rapportez le à votre base"},{"color":"green","text":"pour marquer un point !"}]] 1
item replace entity @s[tag=Has_Blue_flag] weapon.offhand with blue_banner[custom_data={flag:1b},custom_model_data={strings:["blue_flag"]},custom_name={"bold":true,"color":"blue","text":"Drapeau bleu"},lore=[{"color":"green","text":"Rapportez le à votre base"},{"color":"green","text":"pour marquer un point !"}]] 1
# redonne le drapeau à @s
clear @s[tag=Has_Red_flag] red_banner
item replace entity @s[tag=Has_Red_flag] armor.head with red_banner[custom_data={flag:1b},custom_model_data={strings:["red_flag"]},custom_name={"bold":true,"color":"red","text":"Drapeau rouge"},lore=[{"color":"green","text":"Rapportez le à votre base"},{"color":"green","text":"pour marquer un point !"}]] 1
item replace entity @s[tag=Has_Red_flag] weapon.offhand with red_banner[custom_data={flag:1b},custom_model_data={strings:["red_flag"]},custom_name={"bold":true,"color":"red","text":"Drapeau rouge"},lore=[{"color":"green","text":"Rapportez le à votre base"},{"color":"green","text":"pour marquer un point !"}]] 1
# redonne le drapeau à @s

tag @s add save_inventory


