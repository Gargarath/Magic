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

## LIVRE ADMIN
item replace block 13 97 11 container.0 with written_book[written_book_content={title:"Livre d'administrateur",author:"",generation:0,pages:[[{"text":"================\n","color":"black","bold":true},{"text":"XX","color":"black","bold":false,"obfuscated":true},{"text":" Livre d'admin ","color":"black","bold":true},{"text":"XX","color":"black","bold":false,"obfuscated":true},{"text":"\n================"},{"text":"\n\n\n----------------"},{"text":"[Arrêter la partie]","color":"red","bold":true,"hover_event":{"action":"show_text","value":[{"text":"Cliquez pour arrêter la partie en cours.","color":"red"}]},"click_event":{"action":"run_command","command":"trigger admin_stop_game"}},{"text":"\n----------------"},{"text":"\n\n\n----------------","bold":true},{"text":"\n[Quitter la modération]","color":"dark_red","bold":false,"hover_event":{"action":"show_text","value":[{"text":"Cliquez pour quitter votre\nrôle de modérateur.","color":"dark_red"}]},"click_event":{"action":"run_command","command":"trigger admin_quit_admin"}},{"text":"\n----------------","bold":true}],[{"text":"       Options","bold":true},{"text":"\n----------------","bold":true},{"text":"\n\n\n\n----------------","bold":true},{"text":"[Equipe aléatoires]","color":"dark_purple","bold":true,"hover_event":{"action":"show_text","value":[{"text":"Cliquez pour répartir les\njoueurs aléatoirement\nentre les deux équipes.","color":"dark_purple"}]},"click_event":{"action":"run_command","command":"trigger admin_randomize_team"}},{"text":"\n----------------","bold":true},{"text":"\n [Classes aléatoires]","color":"red","bold":false,"hover_event":{"action":"show_text","value":[{"text":"Cliquez pour répartir\nles joueurs équitablement\nentre les classes.","color":"red"}]},"click_event":{"action":"run_command","command":"trigger admin_randomize_class"}},{"text":"\n----------------","bold":true},{"text":"\n [Tous prêts magasin]","color":"gold","bold":false,"hover_event":{"action":"show_text","value":[{"text":"Cliquez pour forcer tous\nles joueurs à être prêts\ndans les salles d'achat.","color":"gold"}]},"click_event":{"action":"run_command","command":"trigger admin_all_ready"}},{"text":"\n----------------","bold":true}]]},custom_data={admin_item:1b}] 1
# setup le livre

data merge block 14 97 13 {front_text:{messages:[[{"text":"Livre d'administrateur","color":"dark_red","bold":true}],"","",""]}}
data modify block 13 97 11 Items[{Slot:0b}].components."minecraft:custom_name" set from block 14 97 13 front_text.messages[0]
# remet à jour le livre d'administrateur dans le barril

## ARMURE NIVEAU 0 (pour les armor trim)
item replace block 13 97 11 container.9 with netherite_chestplate[enchantments={"binding_curse":1},unbreakable={},tooltip_display={hide_tooltip:true}] 1
item replace block 13 97 11 container.10 with netherite_leggings[enchantments={"binding_curse":1},unbreakable={},tooltip_display={hide_tooltip:true}] 1
item replace block 13 97 11 container.11 with netherite_boots[enchantments={"binding_curse":1},unbreakable={},tooltip_display={hide_tooltip:true}] 1