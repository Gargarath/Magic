## appelée par l'advancement item_save_system
## permet de router les changements d'inventaire de @s

advancement revoke @s only main:item_save_system
tag @s remove save_inventory

function main:inventory_menu/check_items
function main:items_positions/item_save_system

tag @s add save_inventory