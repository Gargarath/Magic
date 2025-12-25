# appelée par spells:loop executé par un joueur qui lance un spell mais est en respawn
scoreboard players set @s usespell 0
clear @s

execute as @s[tag=warrior] run function stuff:stuff_warrior/stuffwarrior
execute as @s[tag=archer] run function stuff:stuff_archer/stuffarcher
execute as @s[tag=mage] run function stuff:stuff_mage/stuffmage
execute as @s[tag=rogue] run function stuff:stuff_rogue/stuffrogue

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.alert set value {"text":"Impossible de lancer ce sort ici !","color":"dark_red","bold":false}
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.alert set value {"text":"Impossible de lancer ce sort ici !","color":"dark_red","bold":false}
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.alert set value {"text":"Impossible de lancer ce sort ici !","color":"dark_red","bold":false}
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.alert set value {"text":"Impossible de lancer ce sort ici !","color":"dark_red","bold":false}
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.alert set value {"text":"Impossible de lancer ce sort ici !","color":"dark_red","bold":false}
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.alert set value {"text":"Impossible de lancer ce sort ici !","color":"dark_red","bold":false}
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.alert set value {"text":"Impossible de lancer ce sort ici !","color":"dark_red","bold":false}
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.alert set value {"text":"Impossible de lancer ce sort ici !","color":"dark_red","bold":false}
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.alert set value {"text":"Impossible de lancer ce sort ici !","color":"dark_red","bold":false}
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.alert set value {"text":"Impossible de lancer ce sort ici !","color":"dark_red","bold":false}
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.alert set value {"text":"Impossible de lancer ce sort ici !","color":"dark_red","bold":false}
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.alert set value {"text":"Impossible de lancer ce sort ici !","color":"dark_red","bold":false}
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1