# Gere l'activation du spell3lvl2 par un joueur archer

tag @s remove save_inventory

scoreboard players set @s usespell 0
clear @s arrow
clear @s minecraft:tipped_arrow

execute if entity @s[tag=!Has_explosive_arrow] run function stuff:stuff_archer/arrows/freeze_arrow/lvl2 with entity @s EnderItems[0].components.minecraft:custom_data

execute if score @s[tag=!Has_explosive_arrow] Player matches 1 run data modify storage gui player.1.actionbar.alert set value {"text":"Votre prochaine flèche gèlera sa cible !","color":"aqua","bold":false}
execute if score @s[tag=!Has_explosive_arrow] Player matches 2 run data modify storage gui player.2.actionbar.alert set value {"text":"Votre prochaine flèche gèlera sa cible !","color":"aqua","bold":false}
execute if score @s[tag=!Has_explosive_arrow] Player matches 3 run data modify storage gui player.3.actionbar.alert set value {"text":"Votre prochaine flèche gèlera sa cible !","color":"aqua","bold":false}
execute if score @s[tag=!Has_explosive_arrow] Player matches 4 run data modify storage gui player.4.actionbar.alert set value {"text":"Votre prochaine flèche gèlera sa cible !","color":"aqua","bold":false}
execute if score @s[tag=!Has_explosive_arrow] Player matches 5 run data modify storage gui player.5.actionbar.alert set value {"text":"Votre prochaine flèche gèlera sa cible !","color":"aqua","bold":false}
execute if score @s[tag=!Has_explosive_arrow] Player matches 6 run data modify storage gui player.6.actionbar.alert set value {"text":"Votre prochaine flèche gèlera sa cible !","color":"aqua","bold":false}
execute if score @s[tag=!Has_explosive_arrow] Player matches 7 run data modify storage gui player.7.actionbar.alert set value {"text":"Votre prochaine flèche gèlera sa cible !","color":"aqua","bold":false}
execute if score @s[tag=!Has_explosive_arrow] Player matches 8 run data modify storage gui player.8.actionbar.alert set value {"text":"Votre prochaine flèche gèlera sa cible !","color":"aqua","bold":false}
execute if score @s[tag=!Has_explosive_arrow] Player matches 9 run data modify storage gui player.9.actionbar.alert set value {"text":"Votre prochaine flèche gèlera sa cible !","color":"aqua","bold":false}
execute if score @s[tag=!Has_explosive_arrow] Player matches 10 run data modify storage gui player.10.actionbar.alert set value {"text":"Votre prochaine flèche gèlera sa cible !","color":"aqua","bold":false}
execute if score @s[tag=!Has_explosive_arrow] Player matches 11 run data modify storage gui player.11.actionbar.alert set value {"text":"Votre prochaine flèche gèlera sa cible !","color":"aqua","bold":false}
execute if score @s[tag=!Has_explosive_arrow] Player matches 12 run data modify storage gui player.12.actionbar.alert set value {"text":"Votre prochaine flèche gèlera sa cible !","color":"aqua","bold":false}
scoreboard players set @s[tag=!Has_explosive_arrow] gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick
# si @s n'a pas la flèche explosive d'activée alors lui donne la flèche de glace et lui dit que ça prochaine flèce explosera

execute as @s[tag=Has_explosive_arrow] run function spells:spellsystem/spell1_spell3_a/test_player
# si @s a déjà activé la flèche explosive alors lance le système qui lui donnera une flèche explosive de glace

execute at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~
scoreboard players set @s shotarrow 0
tag @s add Has_freeze_arrow
# si un joueur est a un 1 de shotarrow et a le tag Has_freeze_arrow, alors il a utilisé sa flèche

scoreboard players add @s stat_usespell 1
# ajoute un à la stat de stat_usespell de @s (stat du nombre de sorts lancés)

clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={spell3_a:1b,spell3_slot:1b}]

tag @s add save_inventory