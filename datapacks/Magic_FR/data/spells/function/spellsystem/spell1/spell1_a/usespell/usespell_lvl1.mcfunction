# Gere l'activation du spell1lvl1 par un joueur archer

tag @s remove save_inventory
scoreboard players set @s usespell 0
clear @s arrow
clear @s minecraft:tipped_arrow

scoreboard players set @s spell1_a_direction 1
title @s subtitle {"text":"\uE509","shadow_color":0}
scoreboard players set @s explo_position_a 0

execute as @s[tag=!Has_freeze_arrow,scores={Player=1}] run function stuff:stuff_archer/arrows/explosive_arrow/lvl1/player1
execute as @s[tag=!Has_freeze_arrow,scores={Player=2}] run function stuff:stuff_archer/arrows/explosive_arrow/lvl1/player2
execute as @s[tag=!Has_freeze_arrow,scores={Player=3}] run function stuff:stuff_archer/arrows/explosive_arrow/lvl1/player3
execute as @s[tag=!Has_freeze_arrow,scores={Player=4}] run function stuff:stuff_archer/arrows/explosive_arrow/lvl1/player4
execute as @s[tag=!Has_freeze_arrow,scores={Player=5}] run function stuff:stuff_archer/arrows/explosive_arrow/lvl1/player5
execute as @s[tag=!Has_freeze_arrow,scores={Player=6}] run function stuff:stuff_archer/arrows/explosive_arrow/lvl1/player6
execute as @s[tag=!Has_freeze_arrow,scores={Player=7}] run function stuff:stuff_archer/arrows/explosive_arrow/lvl1/player7
execute as @s[tag=!Has_freeze_arrow,scores={Player=8}] run function stuff:stuff_archer/arrows/explosive_arrow/lvl1/player8
execute as @s[tag=!Has_freeze_arrow,scores={Player=9}] run function stuff:stuff_archer/arrows/explosive_arrow/lvl1/player9
execute as @s[tag=!Has_freeze_arrow,scores={Player=10}] run function stuff:stuff_archer/arrows/explosive_arrow/lvl1/player10
execute as @s[tag=!Has_freeze_arrow,scores={Player=11}] run function stuff:stuff_archer/arrows/explosive_arrow/lvl1/player11
execute as @s[tag=!Has_freeze_arrow,scores={Player=12}] run function stuff:stuff_archer/arrows/explosive_arrow/lvl1/player12

execute if score @s[tag=!Has_freeze_arrow] Player matches 1 run data modify storage gui player.1.actionbar.alert set value {"text":"Votre prochaine flèche explosera !","color":"dark_red","bold":false}
execute if score @s[tag=!Has_freeze_arrow] Player matches 2 run data modify storage gui player.2.actionbar.alert set value {"text":"Votre prochaine flèche explosera !","color":"dark_red","bold":false}
execute if score @s[tag=!Has_freeze_arrow] Player matches 3 run data modify storage gui player.3.actionbar.alert set value {"text":"Votre prochaine flèche explosera !","color":"dark_red","bold":false}
execute if score @s[tag=!Has_freeze_arrow] Player matches 4 run data modify storage gui player.4.actionbar.alert set value {"text":"Votre prochaine flèche explosera !","color":"dark_red","bold":false}
execute if score @s[tag=!Has_freeze_arrow] Player matches 5 run data modify storage gui player.5.actionbar.alert set value {"text":"Votre prochaine flèche explosera !","color":"dark_red","bold":false}
execute if score @s[tag=!Has_freeze_arrow] Player matches 6 run data modify storage gui player.6.actionbar.alert set value {"text":"Votre prochaine flèche explosera !","color":"dark_red","bold":false}
execute if score @s[tag=!Has_freeze_arrow] Player matches 7 run data modify storage gui player.7.actionbar.alert set value {"text":"Votre prochaine flèche explosera !","color":"dark_red","bold":false}
execute if score @s[tag=!Has_freeze_arrow] Player matches 8 run data modify storage gui player.8.actionbar.alert set value {"text":"Votre prochaine flèche explosera !","color":"dark_red","bold":false}
execute if score @s[tag=!Has_freeze_arrow] Player matches 9 run data modify storage gui player.9.actionbar.alert set value {"text":"Votre prochaine flèche explosera !","color":"dark_red","bold":false}
execute if score @s[tag=!Has_freeze_arrow] Player matches 10 run data modify storage gui player.10.actionbar.alert set value {"text":"Votre prochaine flèche explosera !","color":"dark_red","bold":false}
execute if score @s[tag=!Has_freeze_arrow] Player matches 11 run data modify storage gui player.11.actionbar.alert set value {"text":"Votre prochaine flèche explosera !","color":"dark_red","bold":false}
execute if score @s[tag=!Has_freeze_arrow] Player matches 12 run data modify storage gui player.12.actionbar.alert set value {"text":"Votre prochaine flèche explosera !","color":"dark_red","bold":false}
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