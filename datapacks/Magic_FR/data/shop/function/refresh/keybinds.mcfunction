## actualise les noms et l'ordre des raccourcis de sorts de @s

execute as @s[tag=warrior] run function stuff:stuff_warrior/save_stuff_as_storage/determine_player
execute as @s[tag=archer] run function stuff:stuff_archer/save_stuff_as_storage/determine_player
execute as @s[tag=mage] run function stuff:stuff_mage/save_stuff_as_storage/determine_player
execute as @s[tag=rogue] run function stuff:stuff_rogue/save_stuff_as_storage/determine_player

execute as @s[tag=warrior] run function main:items_positions/warriors/check_items_positions
execute as @s[tag=archer] run function main:items_positions/archers/check_items_positions
execute as @s[tag=mage] run function main:items_positions/mages/check_items_positions
execute as @s[tag=rogue] run function main:items_positions/rogues/check_items_positions
