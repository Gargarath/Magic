# appelée par usespell1_a ou usespell3_a si @s utilise la flèche explo et la flèche de glace
# permet de détecter le numéro de joueur de @s pour lui donner la flèche de glace explosive adaptée

function stuff:stuff_archer/arrows/combined_arrow/lvlx with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s Player matches 1..12 run scoreboard players set @s gui_actionbar_message 3
execute if score @s Player matches 1..12 run function main:gui/actionbar/set_translated_alert with entity @s EnderItems[0].components.minecraft:custom_data
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick
