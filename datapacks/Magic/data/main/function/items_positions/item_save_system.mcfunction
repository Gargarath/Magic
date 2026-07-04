## appelée par items_positions/on_inventory_changed
## permet d'enregistrer les emplacements du stuff de @s selon sa classe

execute as @s[tag=warrior] run function main:items_positions/warriors/check_items_positions
execute as @s[tag=archer] run function main:items_positions/archers/check_items_positions
execute as @s[tag=mage] run function main:items_positions/mages/check_items_positions
execute as @s[tag=rogue] run function main:items_positions/rogues/check_items_positions

clear @s[tag=Has_Blue_flag] carrot_on_a_stick[custom_model_data={strings:["blue_flag"]}]
execute if entity @s[tag=Has_Blue_flag] run function stuff:generic_stuff/blue_flag with entity @s EnderItems[0].components.minecraft:custom_data
# redonne le drapeau bleu à @s
clear @s[tag=Has_Red_flag] carrot_on_a_stick[custom_model_data={strings:["red_flag"]}]
execute if entity @s[tag=Has_Red_flag] run function stuff:generic_stuff/red_flag with entity @s EnderItems[0].components.minecraft:custom_data
# redonne le drapeau rouge à @s

