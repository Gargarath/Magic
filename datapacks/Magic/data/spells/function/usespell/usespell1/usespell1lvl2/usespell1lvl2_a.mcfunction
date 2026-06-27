# Gere l'activation du spell1lvl2 par un joueur archer

tag @s remove save_inventory

scoreboard players set @s usespell 0
clear @s minecraft:arrow
clear @s minecraft:tipped_arrow
clear @s *[custom_model_data={strings:["spell1_a"]}]

scoreboard players set @s explo_position_a 0

execute if entity @s[tag=!Has_freeze_arrow] run function stuff:stuff_archer/arrows/explosive_arrow/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!Has_freeze_arrow] Player matches 1..12 run scoreboard players set @s gui_actionbar_message 1
execute if score @s[tag=!Has_freeze_arrow] Player matches 1..12 run function main:gui/actionbar/set_translated_alert with entity @s EnderItems[0].components.minecraft:custom_data
scoreboard players set @s[tag=!Has_freeze_arrow] gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick
# si @s n'a pas la flèche de glace d'activée alors lui donne la flèche explo et lui dit que ça prochaine flèce explosera

execute as @s[tag=Has_freeze_arrow] run function spells:spellsystem/spell1_spell3_a/test_player
# si @s a déjà activé la flèche de glace alors lance le système qui lui donnera une flèche explosive de glace


execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~
scoreboard players set @s shotarrow 0
tag @s add Has_explosive_arrow
# si un joueur est a un 1 de shotarrow et a le tag Has_explosive_arrow, alors il a utilisé sa flèche

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

tag @s add save_inventory
