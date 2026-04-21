## appelée par lobby:hotbar_menue/check_right_click

clear @s

item replace entity @s weapon.offhand with carrot_on_a_stick[item_name=" ",enchantments={"binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={offhand_autorized:1b},custom_model_data={strings:["air"]}] 1
# deuxième main vide

execute at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1
item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name={"bold":true,"color":"gold","text":"Guerrier"},custom_data={select_warrior:1b},custom_model_data={strings:["select_warrior"]}] 1
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_green","text":"Archer"},custom_data={select_archer:1b},custom_model_data={strings:["select_archer"]}] 1
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_purple","text":"Mage"},custom_data={select_mage:1b},custom_model_data={strings:["select_mage"]}] 1
item replace entity @s hotbar.3 with carrot_on_a_stick[custom_name={"bold":true,"color":"gray","text":"Assassin"},custom_data={select_rogue:1b},custom_model_data={strings:["select_rogue"]}] 1
item replace entity @s hotbar.5 with carrot_on_a_stick[custom_name={"bold":true,"color":"yellow","text":"Aléatoire"},custom_data={select_random_class:1b},custom_model_data={strings:["select_random_class"]}] 1
$item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name={"bold":true,"color":"red","text":"$(tr_item_back)"},custom_data={back_to_menu:1b},custom_model_data={strings:["back_to_menu"]}] 1
scoreboard players set @s hotbar_menu 1
