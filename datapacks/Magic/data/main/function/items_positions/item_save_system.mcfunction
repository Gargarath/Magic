## appelée par items_positions/on_inventory_changed
## permet d'enregistrer les emplacements du stuff de @s selon sa classe

execute as @s[tag=warrior] run function main:items_positions/warriors/check_items_positions
execute as @s[tag=archer] run function main:items_positions/archers/check_items_positions
execute as @s[tag=mage] run function main:items_positions/mages/check_items_positions
execute as @s[tag=rogue] run function main:items_positions/rogues/check_items_positions

clear @s[tag=Has_Blue_flag] carrot_on_a_stick[custom_model_data={strings:["blue_flag"]}]
item replace entity @s[tag=Has_Blue_flag] armor.head from block 13 97 11 container.6
item replace entity @s[tag=Has_Blue_flag] weapon.offhand from block 13 97 11 container.6
# redonne le drapeau bleu à @s
clear @s[tag=Has_Red_flag] carrot_on_a_stick[custom_model_data={strings:["red_flag"]}]
item replace entity @s[tag=Has_Red_flag] armor.head from block 13 97 11 container.7
item replace entity @s[tag=Has_Red_flag] weapon.offhand from block 13 97 11 container.7
# redonne le drapeau rouge à @s

