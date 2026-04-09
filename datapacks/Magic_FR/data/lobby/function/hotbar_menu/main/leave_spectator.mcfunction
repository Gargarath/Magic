
# appelée par hotbar_menu/team_selector/check_rightclick si @s veut quitter les spectator
# enlève @s des spectator et l'informe

scoreboard players set @s usespell 0
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {entity:"@s","nbt":"EnderItems[0].components.minecraft:custom_data.translate.left_spectator","bold":false,"color":"yellow"}


function lobby:team_selector/leave_team/leave_spectator
# enlève @s des spectator


## REND LES ITEMS

item replace entity @s hotbar.6 with carrot_on_a_stick[item_name=[{"bold":true,"color":"gray","text":"Mode spectateur ("},{"bold":true,"color":"red","italic":true,"text":"désactivé"},{"bold":true,"color":"gray","text":")"}],custom_data={join_spectator:1b},custom_model_data={strings:["join_spectator"]}] 1


item replace entity @s[tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] hotbar.1 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"light_purple","italic":true,"text":"Aléatoire"}],custom_data={class_selector:1b},custom_model_data={strings:["class_selector"]}] 1
# donne l'item vierge si @s n'a pas de classe
item replace entity @s[tag=warrior] hotbar.1 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"gold","italic":true,"text":"Guerrier"}],custom_data={class_selector:1b},custom_model_data={strings:["select_warrior"]}] 1
item replace entity @s[tag=archer] hotbar.1 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"dark_green","italic":true,"text":"Archer"}],custom_data={class_selector:1b},custom_model_data={strings:["select_archer"]}] 1
item replace entity @s[tag=mage] hotbar.1 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"dark_purple","italic":true,"text":"Aléatoire"}],custom_data={class_selector:1b},custom_model_data={strings:["select_mage"]}] 1
item replace entity @s[tag=rogue] hotbar.1 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"gray","italic":true,"text":"Aléatoire"}],custom_data={class_selector:1b},custom_model_data={strings:["select_rogue"]}] 1
# donne l'item en fonction de la classe de @s

item replace entity @s[tag=!blue_team,tag=!red_team] hotbar.2 with carrot_on_a_stick[item_name=[{"bold":true,"color":"green","text":"Equipe : "},{"bold":true,"color":"light_purple","italic":true,"text":"Aléatoire"}],custom_data={team_selector:1b},custom_model_data={strings:["team_selector"]}] 1
# donne l'item vierge si @s n'a pas de team
item replace entity @s[tag=blue_team] hotbar.2 with carrot_on_a_stick[item_name=[{"bold":true,"color":"green","text":"Equipe : "},{"bold":true,"color":"light_purple","italic":true,"text":"Bleue"}],custom_data={team_selector:1b},custom_model_data={strings:["select_blue"]}] 1
item replace entity @s[tag=red_team] hotbar.2 with carrot_on_a_stick[item_name=[{"bold":true,"color":"red","text":"Equipe : "},{"bold":true,"color":"light_purple","italic":true,"text":"Rouge"}],custom_data={team_selector:1b},custom_model_data={strings:["select_red"]}] 1
# donne l'item en fonction de la team de @s