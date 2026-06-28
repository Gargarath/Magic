# appelée par spells:loop si un joueur use un raccourcis pendant le countdown de début de partie
# lui interdit

scoreboard players set @s drop_item 0

execute if score @s Player matches 1..12 run scoreboard players set @s gui_actionbar_message 12
execute if score @s Player matches 1..12 run function main:gui/actionbar/set_translated_alert with entity @s EnderItems[0].components.minecraft:custom_data
scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1

tag @s remove save_inventory
tag @s add inventory_rebuilding
function main:items_positions/cleanup_managed_items
item replace entity @s weapon.offhand from block 13 97 11 container.1
tag @s remove inventory_rebuilding
tag @s add save_inventory
# lui donne les placeholder tête et seconde main
