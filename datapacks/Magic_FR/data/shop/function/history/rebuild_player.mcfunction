## appelee apres un undo / redo
# reconstruit l'inventaire et les affichages a partir de l'etat courant

execute as @s[tag=warrior] run function shop:actualise_advancement/warrior
execute as @s[tag=archer] run function shop:actualise_advancement/archer
execute as @s[tag=mage] run function shop:actualise_advancement/mage
execute as @s[tag=rogue] run function shop:actualise_advancement/rogue

function shop:history/reset_key_slots

tag @s remove save_inventory
clear @s
execute as @s[tag=warrior] run function stuff:stuff_warrior/stuffwarrior
execute as @s[tag=archer] run function stuff:stuff_archer/stuffarcher
execute as @s[tag=mage] run function stuff:stuff_mage/stuffmage
execute as @s[tag=rogue] run function stuff:stuff_rogue/stuffrogue
tag @s add save_inventory

execute at @s run function main:reset/resetframeroom
function shop:setup_shop with entity @s EnderItems[0].components.minecraft:custom_data
function shop:look_at/display_infos/display_infos with entity @s EnderItems[0].components.minecraft:custom_data
