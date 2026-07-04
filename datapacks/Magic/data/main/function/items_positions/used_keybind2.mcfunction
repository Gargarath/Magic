## appelée par item_save_system si @s a swap un item avec sa offhand pour use un spell
## permet dans lancer un sort du raccourcis

tag @s remove save_inventory
execute store result storage temp:keybind selected_slot int 1 run data get entity @s SelectedItemSlot
function main:items_positions/restore_swapped_item with storage temp:keybind
execute if entity @s[scores={InLobby=0},tag=warrior] run function stuff:stuff_warrior/keybind2
execute if entity @s[scores={InLobby=0},tag=archer] run function stuff:stuff_archer/keybind2
execute if entity @s[scores={InLobby=0},tag=mage] run function stuff:stuff_mage/keybind2
execute if entity @s[scores={InLobby=0},tag=rogue] run function stuff:stuff_rogue/keybind2

execute if entity @s[tag=in_lobby_arena,tag=warrior,tag=in_lobby_arena] run function stuff:stuff_warrior/keybind2
execute if entity @s[tag=archer,tag=in_lobby_arena] run function stuff:stuff_archer/keybind2
execute if entity @s[tag=mage,tag=in_lobby_arena] run function stuff:stuff_mage/keybind2
execute if entity @s[tag=rogue,tag=in_lobby_arena] run function stuff:stuff_rogue/keybind2

execute if entity @s[tag=!Has_Blue_flag,tag=!Has_Red_flag] run function stuff:generic_stuff/empty_offhand
clear @s[tag=Has_Blue_flag] carrot_on_a_stick[custom_model_data={strings:["blue_flag"]}]
execute if entity @s[tag=Has_Blue_flag] run function stuff:generic_stuff/blue_flag with entity @s EnderItems[0].components.minecraft:custom_data
# redonne le drapeau bleu à @s
clear @s[tag=Has_Red_flag] carrot_on_a_stick[custom_model_data={strings:["red_flag"]}]
execute if entity @s[tag=Has_Red_flag] run function stuff:generic_stuff/red_flag with entity @s EnderItems[0].components.minecraft:custom_data
# redonne le drapeau rouge à @s


tag @s remove inventory_rebuilding
execute if entity @s[scores={InLobby=1},tag=!in_lobby_arena] run function lobby:hotbar_menu/drop_item
tag @s add save_inventory
