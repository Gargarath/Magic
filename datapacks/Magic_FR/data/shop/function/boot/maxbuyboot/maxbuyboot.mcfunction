# Reset l'item frame botte et indique que l'on a atteint le niveau maximum

playsound minecraft:block.note_block.bass master @s ~ ~ ~ 100 0

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.alert set value {"text":"Vous avez atteint le niveau maximum pour ces bottes !","color":"dark_red","bold":false}
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.alert set value {"text":"Vous avez atteint le niveau maximum pour ces bottes !","color":"dark_red","bold":false}
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.alert set value {"text":"Vous avez atteint le niveau maximum pour ces bottes !","color":"dark_red","bold":false}
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.alert set value {"text":"Vous avez atteint le niveau maximum pour ces bottes !","color":"dark_red","bold":false}
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.alert set value {"text":"Vous avez atteint le niveau maximum pour ces bottes !","color":"dark_red","bold":false}
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.alert set value {"text":"Vous avez atteint le niveau maximum pour ces bottes !","color":"dark_red","bold":false}
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.alert set value {"text":"Vous avez atteint le niveau maximum pour ces bottes !","color":"dark_red","bold":false}
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.alert set value {"text":"Vous avez atteint le niveau maximum pour ces bottes !","color":"dark_red","bold":false}
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.alert set value {"text":"Vous avez atteint le niveau maximum pour ces bottes !","color":"dark_red","bold":false}
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.alert set value {"text":"Vous avez atteint le niveau maximum pour ces bottes !","color":"dark_red","bold":false}
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.alert set value {"text":"Vous avez atteint le niveau maximum pour ces bottes !","color":"dark_red","bold":false}
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.alert set value {"text":"Vous avez atteint le niveau maximum pour ces bottes !","color":"dark_red","bold":false}
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute as @e[tag=boots,distance=..10,limit=1] run data merge entity @s {ItemRotation:0b}
