## appelée en cas de visit de map

clear @s

item replace entity @s weapon.offhand with carrot_on_a_stick[item_name=" ",enchantments={"binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={offhand_autorized:1b},custom_model_data={strings:["air"]}] 1
# deuxième main vide

## MAP ITEMS
$item replace entity @s hotbar.0 with carrot_on_a_stick[custom_data={gamemode:1b},custom_model_data={strings:["leave_spectator"]},custom_name={"bold":true,"color":"yellow","text":"$(tr_item_map_visit_spec_mode_name)"},lore=[{"color":"green","text":"$(tr_item_map_visit_spec_mode_lore_1)"}]] 1
$item replace entity @s hotbar.1 with carrot_on_a_stick[custom_data={tp_blue_flag:1b},custom_model_data={strings:["blue_flag"]},custom_name={"bold":true,"color":"blue","text":"$(tr_item_map_visit_blue_flag_name)"},lore=[{"color":"green","text":"$(tr_item_map_visit_blue_flag_lore_1)"},{"color":"green","text":"$(tr_item_map_visit_blue_flag_lore_2)"}]] 1
$item replace entity @s hotbar.2 with carrot_on_a_stick[custom_data={tp_red_flag:1b},custom_model_data={strings:["red_flag"]},custom_name={"bold":true,"color":"red","text":"$(tr_item_map_visit_red_flag_name)"},lore=[{"color":"green","text":"$(tr_item_map_visit_red_flag_lore_1)"},{"color":"green","text":"$(tr_item_map_visit_red_flag_lore_2)"}]] 1
$item replace entity @s hotbar.3 with blue_bed[custom_data={tp_blue_spawn:1b},custom_name={"bold":true,"color":"blue","text":"$(tr_item_map_visit_blue_spawn_name)"},lore=[{"color":"green","text":"$(tr_item_map_visit_blue_spawn_lore_1)"},{"color":"green","text":"$(tr_item_map_visit_blue_spawn_lore_2)"}]] 1
$item replace entity @s hotbar.4 with red_bed[custom_data={tp_red_spawn:1b},custom_name={"bold":true,"color":"red","text":"$(tr_item_map_visit_red_spawn_name)"},lore=[{"color":"green","text":"$(tr_item_map_visit_red_spawn_lore_1)"},{"color":"green","text":"$(tr_item_map_visit_red_spawn_lore_2)"}]] 1

$item replace entity @s hotbar.8 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"$(tr_item_map_visit_quit_name)"},custom_data={quit_map:1b},custom_model_data={strings:["back_to_menu"]}] 1
# objet pour quitter l'arène

# livre d'admin
execute if score @s operator matches 2 run function stuff:give_admin_book with entity @s EnderItems[0].components.minecraft:custom_data
item replace entity @s[scores={operator=2}] inventory.26 from block 13 97 11 container.0

scoreboard players set @s hotbar_menu 5