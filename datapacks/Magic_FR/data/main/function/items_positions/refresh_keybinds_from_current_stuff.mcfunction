# Rebuilds spell/weapon labels and keybind slots for the current Player number.

execute if score @s Player matches 1 run data remove storage stats:leaderboards by_player.1.key_slot1
execute if score @s Player matches 1 run data remove storage stats:leaderboards by_player.1.key_slot2
execute if score @s Player matches 1 run data remove storage stats:leaderboards by_player.1.key_slot3
execute if score @s Player matches 2 run data remove storage stats:leaderboards by_player.2.key_slot1
execute if score @s Player matches 2 run data remove storage stats:leaderboards by_player.2.key_slot2
execute if score @s Player matches 2 run data remove storage stats:leaderboards by_player.2.key_slot3
execute if score @s Player matches 3 run data remove storage stats:leaderboards by_player.3.key_slot1
execute if score @s Player matches 3 run data remove storage stats:leaderboards by_player.3.key_slot2
execute if score @s Player matches 3 run data remove storage stats:leaderboards by_player.3.key_slot3
execute if score @s Player matches 4 run data remove storage stats:leaderboards by_player.4.key_slot1
execute if score @s Player matches 4 run data remove storage stats:leaderboards by_player.4.key_slot2
execute if score @s Player matches 4 run data remove storage stats:leaderboards by_player.4.key_slot3
execute if score @s Player matches 5 run data remove storage stats:leaderboards by_player.5.key_slot1
execute if score @s Player matches 5 run data remove storage stats:leaderboards by_player.5.key_slot2
execute if score @s Player matches 5 run data remove storage stats:leaderboards by_player.5.key_slot3
execute if score @s Player matches 6 run data remove storage stats:leaderboards by_player.6.key_slot1
execute if score @s Player matches 6 run data remove storage stats:leaderboards by_player.6.key_slot2
execute if score @s Player matches 6 run data remove storage stats:leaderboards by_player.6.key_slot3
execute if score @s Player matches 7 run data remove storage stats:leaderboards by_player.7.key_slot1
execute if score @s Player matches 7 run data remove storage stats:leaderboards by_player.7.key_slot2
execute if score @s Player matches 7 run data remove storage stats:leaderboards by_player.7.key_slot3
execute if score @s Player matches 8 run data remove storage stats:leaderboards by_player.8.key_slot1
execute if score @s Player matches 8 run data remove storage stats:leaderboards by_player.8.key_slot2
execute if score @s Player matches 8 run data remove storage stats:leaderboards by_player.8.key_slot3
execute if score @s Player matches 9 run data remove storage stats:leaderboards by_player.9.key_slot1
execute if score @s Player matches 9 run data remove storage stats:leaderboards by_player.9.key_slot2
execute if score @s Player matches 9 run data remove storage stats:leaderboards by_player.9.key_slot3
execute if score @s Player matches 10 run data remove storage stats:leaderboards by_player.10.key_slot1
execute if score @s Player matches 10 run data remove storage stats:leaderboards by_player.10.key_slot2
execute if score @s Player matches 10 run data remove storage stats:leaderboards by_player.10.key_slot3
execute if score @s Player matches 11 run data remove storage stats:leaderboards by_player.11.key_slot1
execute if score @s Player matches 11 run data remove storage stats:leaderboards by_player.11.key_slot2
execute if score @s Player matches 11 run data remove storage stats:leaderboards by_player.11.key_slot3
execute if score @s Player matches 12 run data remove storage stats:leaderboards by_player.12.key_slot1
execute if score @s Player matches 12 run data remove storage stats:leaderboards by_player.12.key_slot2
execute if score @s Player matches 12 run data remove storage stats:leaderboards by_player.12.key_slot3

execute if score @s Player matches 1.. if entity @s[tag=warrior] run function stuff:stuff_warrior/save_stuff_as_storage/determine_player
execute if score @s Player matches 1.. if entity @s[tag=archer] run function stuff:stuff_archer/save_stuff_as_storage/determine_player
execute if score @s Player matches 1.. if entity @s[tag=mage] run function stuff:stuff_mage/save_stuff_as_storage/determine_player
execute if score @s Player matches 1.. if entity @s[tag=rogue] run function stuff:stuff_rogue/save_stuff_as_storage/determine_player

execute if score @s Player matches 1.. if entity @s[tag=warrior] run function main:items_positions/warriors/check_items_positions
execute if score @s Player matches 1.. if entity @s[tag=archer] run function main:items_positions/archers/check_items_positions
execute if score @s Player matches 1.. if entity @s[tag=mage] run function main:items_positions/mages/check_items_positions
execute if score @s Player matches 1.. if entity @s[tag=rogue] run function main:items_positions/rogues/check_items_positions
