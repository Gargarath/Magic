## appelée par check_rightclick quand @s veut choisir sa couleur de FFA
# lui affiche les pages

execute if score @s hotbar_menu matches 0 run scoreboard players set @s hotbar_menu 6
# si @s vient de cliquer sur le menu -> lui met la page 1

tag @s remove save_inventory
tag @s add inventory_rebuilding
clear @s

item replace entity @s weapon.offhand with carrot_on_a_stick[item_name=" ",enchantments={"binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={offhand_autorized:1b},custom_model_data={strings:["air"]}] 1
# deuxième main vide

# items page précédente
$item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name={"bold":true,"color":"gray","text":"$(tr_last_page)"},custom_data={previous_page:1b},custom_model_data={strings:["left_arrow"]}] 1

## COLOR ITEMS PAGE 1
execute if score @s hotbar_menu matches 6 run function lobby:hotbar_menu/color_picker/page1/give_items with entity @s EnderItems[0].components.minecraft:custom_data
## COLOR ITEMS PAGE 2
execute if score @s hotbar_menu matches 7 run function lobby:hotbar_menu/color_picker/page2/give_items with entity @s EnderItems[0].components.minecraft:custom_data
## COLOR ITEMS PAGE 3
execute if score @s hotbar_menu matches 8 run function lobby:hotbar_menu/color_picker/page3/give_items with entity @s EnderItems[0].components.minecraft:custom_data

# items page suivante
$item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name={"bold":true,"color":"gray","text":"$(tr_next_page)"},custom_data={next_page:1b},custom_model_data={strings:["right_arrow"]}] 1

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
tag @s add save_inventory
