## appelée par check_rightclick quand @s veut choisir sa couleur de FFA
# lui affiche les pages

execute if score @s hotbar_menu matches 0 run scoreboard players set @s hotbar_menu 6
# si @s vient de cliquer sur le menu -> lui met la page 1

clear @s

item replace entity @s weapon.offhand with carrot_on_a_stick[item_name=" ",enchantments={"binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={offhand_autorized:1b},custom_model_data={strings:["air"]}] 1
# deuxième main vide

# items page précédente
item replace entity @s hotbar.0 from block 13 97 14 container.16

## COLOR ITEMS PAGE 1
execute if score @s hotbar_menu matches 6 run function lobby:hotbar_menu/color_picker/page1/give_items
## COLOR ITEMS PAGE 2
execute if score @s hotbar_menu matches 7 run function lobby:hotbar_menu/color_picker/page2/give_items
## COLOR ITEMS PAGE 3
execute if score @s hotbar_menu matches 8 run function lobby:hotbar_menu/color_picker/page3/give_items

# items page suivante
item replace entity @s hotbar.8 from block 13 97 14 container.17

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1