# appelée par shop:loop executé par un joueur qui lance un sort mais est dans le shop
scoreboard players set @s usespell 0
tag @s remove save_inventory
tag @s add inventory_rebuilding
function main:items_positions/cleanup_managed_items

execute as @s[tag=warrior] run function stuff:stuff_warrior/stuffwarrior
execute as @s[tag=archer] run function stuff:stuff_archer/stuffarcher
execute as @s[tag=mage] run function stuff:stuff_mage/stuffmage
execute as @s[tag=rogue] run function stuff:stuff_rogue/stuffrogue

$data modify storage gui player.$(player).actionbar.alert set value {"text":"$(tr_shop_cant_usespell) ","color":"dark_red","bold":false}

scoreboard players set @s gui_actionbar_alert 55
# affiche le message sur l'actionbar de @s pendant 55 tick

execute at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 100 1
