## appelée par XXXXX
# permet de reset ce qu'il y a sur l'alerte d'actionbar de @s

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.alert set value {"text":""}
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.alert set value {"text":""}
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.alert set value {"text":""}
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.alert set value {"text":""}
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.alert set value {"text":""}
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.alert set value {"text":""}
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.alert set value {"text":""}
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.alert set value {"text":""}
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.alert set value {"text":""}
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.alert set value {"text":""}
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.alert set value {"text":""}
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.alert set value {"text":""}
# clear l'action bar de @s

scoreboard players set @s gui_actionbar_alert -1
scoreboard players set @s gui_actionbar_message -1
# indique que son actionbar est vide
