# appelée par stuff:stuffx si @s est dans l'arène
# permet à @s de récuperer le bouton pour quitter l'arène

$item replace entity @s hotbar.$(slot_quit) with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_red","text":"$(tr_stuff_generic_quit_arena_name)"},custom_data={quit_slot:1b},custom_model_data={strings:["back_to_menu"]}] 1