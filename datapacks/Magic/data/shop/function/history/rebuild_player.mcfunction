## appelee apres un undo / redo
# reconstruit seulement les elements impactes par l'etat courant

execute as @s[tag=warrior] run function shop:actualise_advancement/warrior
execute as @s[tag=archer] run function shop:actualise_advancement/archer
execute as @s[tag=mage] run function shop:actualise_advancement/mage
execute as @s[tag=rogue] run function shop:actualise_advancement/rogue

function shop:history/reset_key_slots

tag @s remove save_inventory
tag @s add inventory_rebuilding
execute as @s[tag=warrior] run function shop:history/apply/warrior/warrior with entity @s EnderItems[0].components.minecraft:custom_data
execute as @s[tag=archer] run function shop:history/apply/archer/archer with entity @s EnderItems[0].components.minecraft:custom_data
execute as @s[tag=mage] run function shop:history/apply/mage/mage with entity @s EnderItems[0].components.minecraft:custom_data
execute as @s[tag=rogue] run function shop:history/apply/rogue/rogue with entity @s EnderItems[0].components.minecraft:custom_data
tag @s remove inventory_rebuilding
tag @s add save_inventory
function shop:refresh/keybinds

function shop:refresh/money/refresh_money
# actualise l'argent dans le shop de @s

function shop:history/refresh_buttons with entity @s EnderItems[0].components.minecraft:custom_data
# actualise les boutons undo / redo de @s

function shop:look_at/display_infos/display_infos with entity @s EnderItems[0].components.minecraft:custom_data
