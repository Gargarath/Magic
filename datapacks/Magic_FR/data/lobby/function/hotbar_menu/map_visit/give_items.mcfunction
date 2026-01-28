## appelée en cas de visit de map

clear @s

item replace entity @s weapon.offhand with carrot_on_a_stick[item_name=" ",enchantments={"binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={offhand_autorized:1b},custom_model_data={strings:["air"]}] 1
# deuxième main vide

## MAP ITEMS
item replace entity @s hotbar.0 with carrot_on_a_stick[custom_data={gamemode:1b},custom_model_data={strings:["leave_spectator"]},custom_name={"bold":true,"color":"yellow","text":"Mode spectateur"},lore=[{"color":"green","text":"Passer en mode spectateur"}]] 1
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_data={tp_blue_flag:1b},custom_model_data={strings:["blue_flag"]},custom_name={"bold":true,"color":"blue","text":"Drapeau bleu"},lore=[{"color":"green","text":"Téléportez vous au"},{"color":"green","text":"drapeau bleu !"}]] 1
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_data={tp_red_flag:1b},custom_model_data={strings:["red_flag"]},custom_name={"bold":true,"color":"red","text":"Drapeau rouge"},lore=[{"color":"green","text":"Téléportez vous au"},{"color":"green","text":"drapeau rouge !"}]] 1
item replace entity @s hotbar.3 with blue_bed[custom_data={tp_blue_spawn:1b},custom_name={"bold":true,"color":"blue","text":"Spawn bleu"},lore=[{"color":"green","text":"Téléportez vous au"},{"color":"green","text":"spawn bleu !"}]] 1
item replace entity @s hotbar.4 with red_bed[custom_data={tp_red_spawn:1b},custom_name={"bold":true,"color":"red","text":"Spawn rouge"},lore=[{"color":"green","text":"Téléportez vous au"},{"color":"green","text":"spawn rouge !"}]] 1


item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"Quitter l'arène"},custom_data={quit_map:1b},custom_model_data={strings:["back_to_menu"]}] 1
# objet pour quitter l'arène


scoreboard players set @s hotbar_menu 5