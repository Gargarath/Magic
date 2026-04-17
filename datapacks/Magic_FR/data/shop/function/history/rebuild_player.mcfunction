## appelee apres un undo / redo
# reconstruit seulement les elements impactes par l'etat courant

execute as @s[tag=warrior] run function shop:actualise_advancement/warrior
execute as @s[tag=archer] run function shop:actualise_advancement/archer
execute as @s[tag=mage] run function shop:actualise_advancement/mage
execute as @s[tag=rogue] run function shop:actualise_advancement/rogue

function main:gui/reset_actionbar_bars
function shop:history/reset_key_slots

tag @s remove save_inventory
execute as @s[tag=warrior] run function shop:history/apply/warrior/warrior with entity @s EnderItems[0].components.minecraft:custom_data
execute as @s[tag=archer] run function shop:history/apply/archer/archer with entity @s EnderItems[0].components.minecraft:custom_data
execute as @s[tag=mage] run function shop:history/apply/mage/mage with entity @s EnderItems[0].components.minecraft:custom_data
execute as @s[tag=rogue] run function shop:history/apply/rogue/rogue with entity @s EnderItems[0].components.minecraft:custom_data
tag @s add save_inventory

execute at @s run function main:reset/resetframeroom
function shop:setup_shop with entity @s EnderItems[0].components.minecraft:custom_data
function shop:look_at/display_infos/display_infos with entity @s EnderItems[0].components.minecraft:custom_data
