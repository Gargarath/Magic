## appelée par start_jump

tag @s remove save_inventory
tag @s add inventory_rebuilding
function main:items_positions/cleanup_lobby_hotbar

item replace entity @s weapon.offhand with carrot_on_a_stick[item_name=" ",enchantments={"binding_curse":1},tooltip_display={hide_tooltip:true},custom_data={offhand_autorized:1b},custom_model_data={strings:["air"]}] 1
# deuxième main vide

## JUMP ITEMS
$item replace entity @s hotbar.3 with carrot_on_a_stick[item_name=[{"color":"green","text":"$(tr_item_jump_checkpoint)"}],custom_data={tp_checkpoint:1b},custom_model_data={strings:["tp_checkpoint"]}] 1
$item replace entity @s hotbar.4 with carrot_on_a_stick[item_name=[{"bold":true,"color":"dark_red","text":"$(tr_item_jump_reset)"}],custom_data={reset_jump:1b},custom_model_data={strings:["back_to_menu"]}] 1


function main:inventory_menu/give_items with entity @s EnderItems[0].components.minecraft:custom_data


tag @s remove inventory_rebuilding
tag @s add save_inventory
scoreboard players set @s hotbar_menu 3
