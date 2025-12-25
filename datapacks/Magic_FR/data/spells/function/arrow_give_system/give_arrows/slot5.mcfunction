# Fonction appelée par "spells:arrow_give_system/addarrows". Permet de redonner un nombre de fleche adéquoit selon le nombre de fleche dispo
# selon l'emplacement des flèche de @s

clear @s arrow
item replace entity @s[scores={arrow=1}] hotbar.5 with arrow[custom_name="Flèche",custom_data={arrows_slot:1b}] 1
item replace entity @s[scores={arrow=2}] hotbar.5 with arrow[custom_name="Flèche",custom_data={arrows_slot:1b}] 2
item replace entity @s[scores={arrow=3}] hotbar.5 with arrow[custom_name="Flèche",custom_data={arrows_slot:1b}] 3
item replace entity @s[scores={arrow=4}] hotbar.5 with arrow[custom_name="Flèche",custom_data={arrows_slot:1b}] 4
item replace entity @s[scores={arrow=5}] hotbar.5 with arrow[custom_name="Flèche",custom_data={arrows_slot:1b}] 5
item replace entity @s[scores={arrow=6}] hotbar.5 with arrow[custom_name="Flèche",custom_data={arrows_slot:1b}] 6
item replace entity @s[scores={arrow=7}] hotbar.5 with arrow[custom_name="Flèche",custom_data={arrows_slot:1b}] 7
item replace entity @s[scores={arrow=8}] hotbar.5 with arrow[custom_name="Flèche",custom_data={arrows_slot:1b}] 8
item replace entity @s[scores={arrow=9}] hotbar.5 with arrow[custom_name="Flèche",custom_data={arrows_slot:1b}] 9
item replace entity @s[scores={arrow=10}] hotbar.5 with arrow[custom_name="Flèche",custom_data={arrows_slot:1b}] 10
scoreboard players add @s[tag=Has_explosive_arrow,tag=!Has_freeze_arrow] arrow 1
scoreboard players add @s[tag=Has_freeze_arrow,tag=!Has_explosive_arrow] arrow 1
execute if score @s maxarrow < @s arrow run scoreboard players add @s[tag=Has_explosive_arrow,tag=Has_freeze_arrow] arrow 1