# Le déplacement du bouton est considéré comme un clic par le menu d'inventaire.
clear @s oak_sign[custom_data={inventory_menu:1b,inventory_menu_codex:1b}]
function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data
function main:upgrade_codex/open
