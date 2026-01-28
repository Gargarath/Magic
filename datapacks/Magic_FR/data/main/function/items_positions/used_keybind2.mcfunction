## appelée par item_save_system si @s a swap un item avec sa offhand pour use un spell
## permet dans lancer un sort du raccourcis

tag @s remove save_inventory
execute if entity @s[scores={InLobby=0},tag=warrior] run function stuff:stuff_warrior/keybind2
execute if entity @s[scores={InLobby=0},tag=archer] run function stuff:stuff_archer/keybind2
execute if entity @s[scores={InLobby=0},tag=mage] run function stuff:stuff_mage/keybind2
execute if entity @s[scores={InLobby=0},tag=rogue] run function stuff:stuff_rogue/keybind2

execute if entity @s[tag=in_lobby_arena,tag=warrior,tag=in_lobby_arena] run function stuff:stuff_warrior/keybind2
execute if entity @s[tag=archer,tag=in_lobby_arena] run function stuff:stuff_archer/keybind2
execute if entity @s[tag=mage,tag=in_lobby_arena] run function stuff:stuff_mage/keybind2
execute if entity @s[tag=rogue,tag=in_lobby_arena] run function stuff:stuff_rogue/keybind2

execute if entity @s[scores={InLobby=1},tag=!in_lobby_arena] run function lobby:hotbar_menu/drop_item
tag @s add save_inventory