# appelée par spells:loop si un joueur use un raccourcis pendant le countdown de début de partie
# lui interdit

scoreboard players set @s drop_item 0

execute if score @s Player matches 1 run data modify storage gui player.1.actionbar.alert set value {"text":"Impossible de lancer des sorts pendant l'attente !","color":"dark_red","bold":false}
execute if score @s Player matches 2 run data modify storage gui player.2.actionbar.alert set value {"text":"Impossible de lancer des sorts pendant l'attente !","color":"dark_red","bold":false}
execute if score @s Player matches 3 run data modify storage gui player.3.actionbar.alert set value {"text":"Impossible de lancer des sorts pendant l'attente !","color":"dark_red","bold":false}
execute if score @s Player matches 4 run data modify storage gui player.4.actionbar.alert set value {"text":"Impossible de lancer des sorts pendant l'attente !","color":"dark_red","bold":false}
execute if score @s Player matches 5 run data modify storage gui player.5.actionbar.alert set value {"text":"Impossible de lancer des sorts pendant l'attente !","color":"dark_red","bold":false}
execute if score @s Player matches 6 run data modify storage gui player.6.actionbar.alert set value {"text":"Impossible de lancer des sorts pendant l'attente !","color":"dark_red","bold":false}
execute if score @s Player matches 7 run data modify storage gui player.7.actionbar.alert set value {"text":"Impossible de lancer des sorts pendant l'attente !","color":"dark_red","bold":false}
execute if score @s Player matches 8 run data modify storage gui player.8.actionbar.alert set value {"text":"Impossible de lancer des sorts pendant l'attente !","color":"dark_red","bold":false}
execute if score @s Player matches 9 run data modify storage gui player.9.actionbar.alert set value {"text":"Impossible de lancer des sorts pendant l'attente !","color":"dark_red","bold":false}
execute if score @s Player matches 10 run data modify storage gui player.10.actionbar.alert set value {"text":"Impossible de lancer des sorts pendant l'attente !","color":"dark_red","bold":false}
execute if score @s Player matches 11 run data modify storage gui player.11.actionbar.alert set value {"text":"Impossible de lancer des sorts pendant l'attente !","color":"dark_red","bold":false}
execute if score @s Player matches 12 run data modify storage gui player.12.actionbar.alert set value {"text":"Impossible de lancer des sorts pendant l'attente !","color":"dark_red","bold":false}
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1

tag @s remove save_inventory
tag @s add inventory_rebuilding
clear @s
item replace entity @s armor.head from block 13 97 11 container.1
item replace entity @s weapon.offhand from block 13 97 11 container.1
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
tag @s add save_inventory
# lui donne les placeholder tête et seconde main
