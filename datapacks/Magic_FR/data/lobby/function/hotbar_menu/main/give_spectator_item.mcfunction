## gèle certains objets si @s est en mode spectateur

## SELECT TEAM INUTILISABLE
item replace entity @s hotbar.1 with carrot_on_a_stick[item_name=[{"bold":true,"color":"green","text":"Equipe ("},{"bold":true,"color":"gray","italic":true,"text":"Mode Spectateur"},{"bold":true,"color":"green","text":")"}],custom_data={cant_use_in_spec:1b},custom_model_data={strings:["team_selector"]}] 1


## SELECT CLASS INUTILISABLE
item replace entity @s hotbar.0 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe ("},{"bold":true,"color":"gray","italic":true,"text":"Mode Spectateur"},{"bold":true,"color":"yellow","text":")"}],custom_data={cant_use_in_spec:1b},custom_model_data={strings:["class_selector"]}] 1


## OBJET QUITTER SPEC
item replace entity @s hotbar.6 with carrot_on_a_stick[item_name=[{"bold":true,"color":"gray","text":"Mode spectateur ("},{"bold":true,"color":"green","italic":true,"text":"activé"},{"bold":true,"color":"gray","text":")"}],custom_data={leave_spectator:1b},custom_model_data={strings:["leave_spectator"]}] 1
