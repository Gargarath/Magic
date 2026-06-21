## appelée par inventory_menu/check_items
## permet de changer la langue quand @s clique l'item d'inventaire

tag @s add inventory_rebuilding
function main:inventory_menu/cleanup_language_items
function main:personnal_data/translation/change_language/change_language
tag @s remove inventory_rebuilding
