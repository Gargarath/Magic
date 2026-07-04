## gèle certains objets si @s est en mode spectateur

## COLOR PICKER INUTILISABLE (FFA)
execute if score $gamemode option_panel matches 0 run function lobby:hotbar_menu/main/give_spectator_color_picker with entity @s EnderItems[0].components.minecraft:custom_data


## SELECT TEAM INUTILISABLE (CTF)
$execute if score $gamemode option_panel matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick[item_name=[{"bold":true,"color":"green","text":"$(tr_item_team) ("},{"bold":true,"color":"gray","italic":true,"text":"$(tr_item_spec_mode)"},{"bold":true,"color":"green","text":")"}],custom_data={cant_use_in_spec:1b},custom_model_data={strings:["team_selector"]}] 1


## SELECT CLASS INUTILISABLE
$item replace entity @s hotbar.1 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"$(tr_item_class) ("},{"bold":true,"color":"gray","italic":true,"text":"$(tr_item_spec_mode)"},{"bold":true,"color":"yellow","text":")"}],custom_data={cant_use_in_spec:1b},custom_model_data={strings:["class_selector"]}] 1


## OBJET QUITTER SPEC
$item replace entity @s hotbar.6 with carrot_on_a_stick[item_name=[{"bold":true,"color":"gray","text":"$(tr_item_spec_mode) ("},{"bold":true,"color":"green","italic":true,"text":"$(tr_item_activated)"},{"bold":true,"color":"gray","text":")"}],custom_data={leave_spectator:1b},custom_model_data={strings:["leave_spectator"]}] 1
