## appelée par rien
# permet de setup certains items spéciaux

item replace block 13 97 11 container.1 with barrier[custom_data={flag:1b},item_name=" ",custom_model_data={strings:["air"]},enchantments={"binding_curse":1},tooltip_display={hide_tooltip:true}] 1
# barrier block invisible mis dans les offhand et tête quand rien d'autre n'y est (drapeau ou ice block...)

item replace block 13 97 11 container.2 with barrier[custom_data={flag:1b},item_name=" ",custom_model_data={strings:["air"]},minecraft:equippable={slot:"head",camera_overlay:"minecraft:overlay/in_spawn"}] 1
# barrier block invisible mis dans les offhand et tête quand rien d'autre n'y est (drapeau ou ice block...)

item replace block 13 97 11 container.3 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"Quitter l'arène"},custom_data={quit_slot:1b},custom_model_data={strings:["back_to_menu"]}] 1
# objet pour quitter l'arène

## JUMP
item replace block 13 97 11 container.4 with carrot_on_a_stick[item_name=[{"color":"green","text":"Dernier checkpoint"}],custom_data={tp_checkpoint:1b},custom_model_data={strings:["tp_checkpoint"]}] 1
# objet tp dernier checkpoint
item replace block 13 97 11 container.5 with carrot_on_a_stick[item_name=[{"bold":true,"color":"dark_red","text":"Annuler"}],custom_data={reset_jump:1b},custom_model_data={strings:["back_to_menu"]}] 1
# objet reset le jump