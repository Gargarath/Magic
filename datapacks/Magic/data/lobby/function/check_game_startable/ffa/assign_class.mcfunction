## appelée par check_startable/ffa/check_startable
# donne la bonne classe aux joueurs qui n'ont pas encore leur classes

execute store result score @s class_id run random value 1..4
execute if score @s class_id matches 1 run function lobby:class_selector/give_classes/warrior
execute if score @s class_id matches 2 run function lobby:class_selector/give_classes/archer
execute if score @s class_id matches 3 run function lobby:class_selector/give_classes/mage
execute if score @s class_id matches 4 run function lobby:class_selector/give_classes/rogue