## appelée par rien
# permet de setup certains items spéciaux

item replace block 13 97 11 container.1 with carrot_on_a_stick[custom_data={offhand_autorized:1b},item_name=" ",custom_model_data={strings:["air"]},enchantments={"binding_curse":1},enchantment_glint_override=false,tooltip_display={hide_tooltip:true}] 1
# barrier block invisible mis dans les offhand et tête quand rien d'autre n'y est (drapeau ou ice block...)

item replace block 13 97 11 container.2 with carrot_on_a_stick[custom_data={offhand_autorized:1b},item_name=" ",custom_model_data={strings:["air"]},enchantments={"binding_curse":1},enchantment_glint_override=false,tooltip_display={hide_tooltip:true},minecraft:equippable={slot:"head",camera_overlay:"minecraft:overlay/in_spawn"}] 1
# barrier block invisible mis dans les offhand et tête quand rien d'autre n'y est (drapeau ou ice block...)

item replace block 13 97 11 container.3 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"Quitter l'arène"},custom_data={quit_slot:1b},custom_model_data={strings:["back_to_menu"]}] 1
# objet pour quitter l'arène

## JUMP
item replace block 13 97 11 container.4 with carrot_on_a_stick[item_name=[{"color":"green","text":"Dernier checkpoint"}],custom_data={tp_checkpoint:1b},custom_model_data={strings:["tp_checkpoint"]}] 1
# objet tp dernier checkpoint
item replace block 13 97 11 container.5 with carrot_on_a_stick[item_name=[{"bold":true,"color":"dark_red","text":"Annuler"}],custom_data={reset_jump:1b},custom_model_data={strings:["back_to_menu"]}] 1
# objet reset le jump

## DRAPEAUX
item replace block 13 97 11 container.6 with carrot_on_a_stick[custom_data={offhand_autorized:1b},enchantments={"binding_curse":1},tooltip_display={hidden_components:["enchantments"]},enchantment_glint_override=false,custom_model_data={strings:["blue_flag"]},custom_name={"bold":true,"color":"blue","text":"Drapeau bleu"},lore=[{"color":"green","text":"Rapportez le à votre base"},{"color":"green","text":"pour marquer un point !"}]] 1
item replace block 13 97 11 container.7 with carrot_on_a_stick[custom_data={offhand_autorized:1b},enchantments={"binding_curse":1},tooltip_display={hidden_components:["enchantments"]},enchantment_glint_override=false,custom_model_data={strings:["red_flag"]},custom_name={"bold":true,"color":"red","text":"Drapeau rouge"},lore=[{"color":"green","text":"Rapportez le à votre base"},{"color":"green","text":"pour marquer un point !"}]] 1

item replace block 13 97 11 container.8 with carrot_on_a_stick[custom_name={"bold":true,"color":"red","text":"Retour"},custom_data={back_to_menu:1b},custom_model_data={strings:["back_to_menu"]}] 1

## ARMURE NIVEAU 0 (pour les armor trim)
item replace block 13 97 11 container.9 with netherite_chestplate[enchantments={"binding_curse":1},unbreakable={},attribute_modifiers=[{id:"armor",type:"armor",amount:0,operation:"add_value"},{id:"armor_toughness",type:"armor_toughness",amount:0,operation:"add_value"},{id:"knockback_resistance",type:"knockback_resistance",amount:0,operation:"add_value"}],tooltip_display={hide_tooltip:true}] 1
item replace block 13 97 11 container.10 with netherite_leggings[enchantments={"binding_curse":1},unbreakable={},attribute_modifiers=[{id:"armor",type:"armor",amount:0,operation:"add_value"},{id:"armor_toughness",type:"armor_toughness",amount:0,operation:"add_value"},{id:"knockback_resistance",type:"knockback_resistance",amount:0,operation:"add_value"}],tooltip_display={hide_tooltip:true}] 1
item replace block 13 97 11 container.11 with netherite_boots[enchantments={"binding_curse":1},unbreakable={},attribute_modifiers=[{id:"armor",type:"armor",amount:0,operation:"add_value"},{id:"armor_toughness",type:"armor_toughness",amount:0,operation:"add_value"},{id:"knockback_resistance",type:"knockback_resistance",amount:0,operation:"add_value"}],tooltip_display={hide_tooltip:true}] 1

# OVERLAY FEU
item replace block 17 95 15 container.6 with magma_block[minecraft:equippable={slot:"head",camera_overlay:"minecraft:overlay/burning1"},enchantments={"binding_curse":1},lore=["----------------","Vous êtes en feu !","----------------"],item_name={"bold":true,"color":"red","text":"Brulure"},tooltip_display={hidden_components:["enchantments"]}] 1


# OVERLAY GLACE
item replace block 17 95 13 container.24 with ice[minecraft:equippable={slot:"head",camera_overlay:"minecraft:overlay/frozen1"},enchantments={"binding_curse":1},lore=["----------------","Vous êtes gelé !","----------------"],item_name={"bold":true,"color":"aqua","text":"Gel"},tooltip_display={hidden_components:["enchantments"]}] 1

# COLOR PICKER (pour FFA)

item replace block 13 97 14 container.0 with white_wool[custom_name={"bold":true,"color":"white","text":"Blanc"},custom_data={select_white_color:1b}] 1
item replace block 13 97 14 container.1 with light_gray_wool[custom_name={"bold":true,"color":"gray","text":"Gris clair"},custom_data={select_gray_color:1b}] 1
item replace block 13 97 14 container.2 with gray_wool[custom_name={"bold":true,"color":"dark_gray","text":"Gris"},custom_data={select_dark_gray_color:1b}] 1
item replace block 13 97 14 container.3 with black_wool[custom_name={"bold":true,"color":"black","text":"Noir","shadow_color":1688906410},custom_data={select_black_color:1b}] 1
item replace block 13 97 14 container.4 with light_blue_wool[custom_name={"bold":true,"color":"aqua","text":"Bleu clair"},custom_data={select_aqua_color:1b}] 1
item replace block 13 97 14 container.5 with cyan_wool[custom_name={"bold":true,"color":"dark_aqua","text":"Cyan"},custom_data={select_dark_aqua_color:1b}] 1
item replace block 13 97 14 container.6 with blue_terracotta[custom_name={"bold":true,"color":"blue","text":"Bleu"},custom_data={select_blue_color:1b}] 1
item replace block 13 97 14 container.7 with blue_wool[custom_name={"bold":true,"color":"dark_blue","text":"Bleu foncé"},custom_data={select_dark_blue_color:1b}] 1
item replace block 13 97 14 container.8 with lime_wool[custom_name={"bold":true,"color":"green","text":"Vert clair"},custom_data={select_green_color:1b}] 1
item replace block 13 97 14 container.9 with green_wool[custom_name={"bold":true,"color":"dark_green","text":"Vert foncé"},custom_data={select_dark_green_color:1b}] 1
item replace block 13 97 14 container.10 with magenta_wool[custom_name={"bold":true,"color":"light_purple","text":"Rose"},custom_data={select_light_purple_color:1b}] 1
item replace block 13 97 14 container.11 with purple_wool[custom_name={"bold":true,"color":"dark_purple","text":"Violet"},custom_data={select_dark_purple_color:1b}] 1
item replace block 13 97 14 container.12 with red_terracotta[custom_name={"bold":true,"color":"red","text":"Rouge"},custom_data={select_red_color:1b}] 1
item replace block 13 97 14 container.13 with red_wool[custom_name={"bold":true,"color":"dark_red","text":"Rouge foncé"},custom_data={select_dark_red_color:1b}] 1
item replace block 13 97 14 container.14 with yellow_wool[custom_name={"bold":true,"color":"yellow","text":"Jaune"},custom_data={select_yellow_color:1b}] 1
item replace block 13 97 14 container.15 with orange_wool[custom_name={"bold":true,"color":"gold","text":"Doré"},custom_data={select_gold_color:1b}] 1

item replace block 13 97 14 container.16 with carrot_on_a_stick[custom_name={"bold":true,"color":"gray","text":"Page précédente"},custom_data={previous_page:1b},custom_model_data={strings:["left_arrow"]}] 1
item replace block 13 97 14 container.17 with carrot_on_a_stick[custom_name={"bold":true,"color":"gray","text":"Page suivante"},custom_data={next_page:1b},custom_model_data={strings:["right_arrow"]}] 1
