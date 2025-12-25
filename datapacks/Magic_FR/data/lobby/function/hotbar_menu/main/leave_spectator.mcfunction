## appelée par check_rightclick permet à @s de quitter le mode spec

scoreboard players set @s usespell 0
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

tellraw @s {"bold":false,"color":"yellow","text":"Vous avez quitté le mode spectateur !"}

tag @s remove spell_immune

tag @s[tag=blue_spectator] add blue_team
tag @s[tag=red_spectator] add red_team
tag @s remove spectator
tag @s remove red_spectator
tag @s remove blue_spectator

function lobby:team_selector/give_lobby_team
# Donne la bonne équipe de lobby à @s


item replace entity @s hotbar.6 with carrot_on_a_stick[item_name=[{"bold":true,"color":"gray","text":"Mode spectateur ("},{"bold":true,"color":"red","italic":true,"text":"désactivé"},{"bold":true,"color":"gray","text":")"}],custom_data={join_spectator:1b},custom_model_data={strings:["join_spectator"]}] 1

scoreboard players set @s Player 0

item replace entity @s[tag=!warrior,tag=!archer,tag=!mage,tag=!rogue] hotbar.0 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"light_purple","italic":true,"text":"Aléatoire"}],custom_data={class_selector:1b},custom_model_data={strings:["class_selector"]}] 1
# donne l'item vierge si @s n'a pas de classe
item replace entity @s[tag=warrior] hotbar.0 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"gold","italic":true,"text":"Guerrier"}],custom_data={class_selector:1b},custom_model_data={strings:["select_warrior"]}] 1
item replace entity @s[tag=archer] hotbar.0 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"dark_green","italic":true,"text":"Archer"}],custom_data={class_selector:1b},custom_model_data={strings:["select_archer"]}] 1
item replace entity @s[tag=mage] hotbar.0 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"dark_purple","italic":true,"text":"Aléatoire"}],custom_data={class_selector:1b},custom_model_data={strings:["select_mage"]}] 1
item replace entity @s[tag=rogue] hotbar.0 with carrot_on_a_stick[item_name=[{"bold":true,"color":"yellow","text":"Classe : "},{"bold":true,"color":"gray","italic":true,"text":"Aléatoire"}],custom_data={class_selector:1b},custom_model_data={strings:["select_rogue"]}] 1
# donne l'item en fonction de la classe de @s

item replace entity @s[tag=!blue_team,tag=!red_team] hotbar.1 with carrot_on_a_stick[item_name=[{"bold":true,"color":"green","text":"Equipe : "},{"bold":true,"color":"light_purple","italic":true,"text":"Aléatoire"}],custom_data={team_selector:1b},custom_model_data={strings:["team_selector"]}] 1
# donne l'item vierge si @s n'a pas de team
item replace entity @s[tag=blue_team] hotbar.1 with carrot_on_a_stick[item_name=[{"bold":true,"color":"green","text":"Equipe : "},{"bold":true,"color":"light_purple","italic":true,"text":"Bleue"}],custom_data={team_selector:1b},custom_model_data={strings:["select_blue"]}] 1
item replace entity @s[tag=red_team] hotbar.1 with carrot_on_a_stick[item_name=[{"bold":true,"color":"red","text":"Equipe : "},{"bold":true,"color":"light_purple","italic":true,"text":"Rouge"}],custom_data={team_selector:1b},custom_model_data={strings:["select_red"]}] 1
# donne l'item en fonction de la team de @s

execute if entity @s[tag=blue_team] run function lobby:team_selector/display_team_members/blue/new_member
# si @s est bleu -> le rajoute aux statues
execute if entity @s[tag=red_team] run function lobby:team_selector/display_team_members/red/new_member
# si @s est rouge -> le rajoute aux statues