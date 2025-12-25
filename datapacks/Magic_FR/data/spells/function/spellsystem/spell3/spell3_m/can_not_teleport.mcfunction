# appelé par check_good_tp si @s ne peut pas se tp
# permet d'indiquer à @s qu'il ne peut pas se tp et pourquoi

scoreboard players set @s usespell 0
tag @s remove can_tp_m

execute if score @s[scores={can_tp_m=0}] Player matches 1 run data modify storage gui player.1.actionbar.alert set value {"text":"Impossible de se téléporter ici !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=0}] Player matches 2 run data modify storage gui player.2.actionbar.alert set value {"text":"Impossible de se téléporter ici !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=0}] Player matches 3 run data modify storage gui player.3.actionbar.alert set value {"text":"Impossible de se téléporter ici !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=0}] Player matches 4 run data modify storage gui player.4.actionbar.alert set value {"text":"Impossible de se téléporter ici !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=0}] Player matches 5 run data modify storage gui player.5.actionbar.alert set value {"text":"Impossible de se téléporter ici !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=0}] Player matches 6 run data modify storage gui player.6.actionbar.alert set value {"text":"Impossible de se téléporter ici !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=0}] Player matches 7 run data modify storage gui player.7.actionbar.alert set value {"text":"Impossible de se téléporter ici !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=0}] Player matches 8 run data modify storage gui player.8.actionbar.alert set value {"text":"Impossible de se téléporter ici !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=0}] Player matches 9 run data modify storage gui player.9.actionbar.alert set value {"text":"Impossible de se téléporter ici !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=0}] Player matches 10 run data modify storage gui player.10.actionbar.alert set value {"text":"Impossible de se téléporter ici !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=0}] Player matches 11 run data modify storage gui player.11.actionbar.alert set value {"text":"Impossible de se téléporter ici !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=0}] Player matches 12 run data modify storage gui player.12.actionbar.alert set value {"text":"Impossible de se téléporter ici !","color":"dark_red","bold":false}
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 1 run data modify storage gui player.1.actionbar.alert set value {"text":"Trop loin pour se téléporter !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 2 run data modify storage gui player.2.actionbar.alert set value {"text":"Trop loin pour se téléporter !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 3 run data modify storage gui player.3.actionbar.alert set value {"text":"Trop loin pour se téléporter !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 4 run data modify storage gui player.4.actionbar.alert set value {"text":"Trop loin pour se téléporter !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 5 run data modify storage gui player.5.actionbar.alert set value {"text":"Trop loin pour se téléporter !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 6 run data modify storage gui player.6.actionbar.alert set value {"text":"Trop loin pour se téléporter !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 7 run data modify storage gui player.7.actionbar.alert set value {"text":"Trop loin pour se téléporter !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 8 run data modify storage gui player.8.actionbar.alert set value {"text":"Trop loin pour se téléporter !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 9 run data modify storage gui player.9.actionbar.alert set value {"text":"Trop loin pour se téléporter !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 10 run data modify storage gui player.10.actionbar.alert set value {"text":"Trop loin pour se téléporter !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 11 run data modify storage gui player.11.actionbar.alert set value {"text":"Trop loin pour se téléporter !","color":"dark_red","bold":false}
execute if score @s[scores={can_tp_m=1,tp_range=51..}] Player matches 12 run data modify storage gui player.12.actionbar.alert set value {"text":"Trop loin pour se téléporter !","color":"dark_red","bold":false}
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1
