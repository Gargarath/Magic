# appelé par check_good_tp si @s ne peut pas se tp
# permet d'indiquer à @s qu'il ne peut pas se tp et pourquoi

scoreboard players set @s usespell 0
tag @s remove can_tp_m

execute if score @s[scores={can_tp_m=0}] Player matches 1..12 run scoreboard players set @s gui_actionbar_message 4
execute if score @s[scores={can_tp_m=0}] Player matches 1..12 run function main:gui/actionbar/set_translated_alert with entity @s EnderItems[0].components.minecraft:custom_data
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 1..12 run scoreboard players set @s gui_actionbar_message 5
execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 1..12 run function main:gui/actionbar/set_translated_alert with entity @s EnderItems[0].components.minecraft:custom_data
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1
