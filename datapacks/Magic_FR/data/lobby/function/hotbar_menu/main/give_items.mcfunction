## permet de donner les item du menu principal de hotbar

clear @s

item replace entity @s weapon.offhand with carrot_on_a_stick[item_name=" ",enchantments={"binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={offhand_autorized:1b},custom_model_data={strings:["air"]}] 1

## CLASS SELECTOR
item replace entity @s[tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] hotbar.0 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"light_purple","italic":true,"text":"Aléatoire"}],custom_data={class_selector:1b},custom_model_data={strings:["class_selector"]}] 1
# donne l'item vierge si @s n'a pas de classe
item replace entity @s[tag=warrior] hotbar.0 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"gold","italic":true,"text":"Guerrier"}],custom_data={class_selector:1b},custom_model_data={strings:["select_warrior"]}] 1
item replace entity @s[tag=archer] hotbar.0 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"dark_green","italic":true,"text":"Archer"}],custom_data={class_selector:1b},custom_model_data={strings:["select_archer"]}] 1
item replace entity @s[tag=mage] hotbar.0 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"dark_purple","italic":true,"text":"Mage"}],custom_data={class_selector:1b},custom_model_data={strings:["select_mage"]}] 1
item replace entity @s[tag=rogue] hotbar.0 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"gray","italic":true,"text":"Assassin"}],custom_data={class_selector:1b},custom_model_data={strings:["select_rogue"]}] 1
# donne l'item en fonction de la classe de @s

## TEAM SELECTOR

item replace entity @s[tag=!blue_team,tag=!red_team] hotbar.1 with carrot_on_a_stick[item_name=[{"bold":true,"color":"green","text":"Equipe : "},{"bold":true,"color":"light_purple","italic":true,"text":"Aléatoire"}],custom_data={team_selector:1b},custom_model_data={strings:["team_selector"]}] 1
# donne l'item vierge si @s n'a pas de team
item replace entity @s[tag=blue_team] hotbar.1 with carrot_on_a_stick[item_name=[{"bold":true,"color":"green","text":"Equipe : "},{"bold":true,"color":"blue","italic":true,"text":"Bleue"}],custom_data={team_selector:1b},custom_model_data={strings:["select_blue"]}] 1
item replace entity @s[tag=red_team] hotbar.1 with carrot_on_a_stick[item_name=[{"bold":true,"color":"green","text":"Equipe : "},{"bold":true,"color":"red","italic":true,"text":"Rouge"}],custom_data={team_selector:1b},custom_model_data={strings:["select_red"]}] 1
# donne l'item en fonction de la team de @s

## SPECTATOR SELECTOR
item replace entity @s[scores={Player=0}] hotbar.6 with carrot_on_a_stick[item_name=[{"bold":true,"color":"gray","text":"Mode spectateur ("},{"bold":true,"color":"red","italic":true,"text":"désactivé"},{"bold":true,"color":"gray","text":")"}],custom_data={join_spectator:1b},custom_model_data={strings:["join_spectator"]}] 1

execute if entity @s[scores={Player=-1}] run function lobby:hotbar_menu/main/give_spectator_item
## LIVRE DE STATS
item replace entity @s[scores={Player_last_game=1}] hotbar.7 from block 13 97 13 container.1
item replace entity @s[scores={Player_last_game=2}] hotbar.7 from block 13 97 13 container.2
item replace entity @s[scores={Player_last_game=3}] hotbar.7 from block 13 97 13 container.3
item replace entity @s[scores={Player_last_game=4}] hotbar.7 from block 13 97 13 container.4
item replace entity @s[scores={Player_last_game=5}] hotbar.7 from block 13 97 13 container.5
item replace entity @s[scores={Player_last_game=6}] hotbar.7 from block 13 97 13 container.6
item replace entity @s[scores={Player_last_game=7}] hotbar.7 from block 13 97 13 container.7
item replace entity @s[scores={Player_last_game=8}] hotbar.7 from block 13 97 13 container.8
item replace entity @s[scores={Player_last_game=9}] hotbar.7 from block 13 97 13 container.9
item replace entity @s[scores={Player_last_game=10}] hotbar.7 from block 13 97 13 container.10
item replace entity @s[scores={Player_last_game=11}] hotbar.7 from block 13 97 13 container.11
item replace entity @s[scores={Player_last_game=12}] hotbar.7 from block 13 97 13 container.12

## LIVRE ADMIN
item replace entity @s[scores={operator=2}] hotbar.8 from block 13 97 11 container.0

scoreboard players set @s hotbar_menu 0