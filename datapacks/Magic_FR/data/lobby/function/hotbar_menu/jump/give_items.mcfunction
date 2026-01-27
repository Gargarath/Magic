## appelée par start_jump

clear @s

item replace entity @s weapon.offhand with carrot_on_a_stick[item_name=" ",enchantments={"binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={offhand_autorized:1b},custom_model_data={strings:["air"]}] 1
# deuxième main vide

## JUMP ITEMS
item replace entity @s hotbar.3 from block 13 97 11 container.4
item replace entity @s hotbar.4 from block 13 97 11 container.5


## LIVRE ADMIN
item replace entity @s[scores={operator=2}] hotbar.8 from block 13 97 11 container.0


scoreboard players set @s hotbar_menu 3