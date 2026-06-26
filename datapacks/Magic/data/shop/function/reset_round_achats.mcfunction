## appelée en cas de clic sur le reset des chats
# permet de reset les achats de @s

scoreboard players operation @s PH = @s PH_backup

scoreboard players operation @s weapon1 = @s weapon1_backup
scoreboard players operation @s spell1 = @s spell1_backup
scoreboard players operation @s spell2 = @s spell2_backup
scoreboard players operation @s spell3 = @s spell3_backup
scoreboard players operation @s chest = @s chest_backup
scoreboard players operation @s legs = @s legs_backup
scoreboard players operation @s boots = @s boots_backup

scoreboard players operation @s arrow = @s arrow_backup
scoreboard players operation @s maxarrow = @s maxarrow_backup
scoreboard players operation @s weapon1_max_range_m = @s weapon1_max_range_m_backup
scoreboard players operation @s explo_max_range_a = @s explo_max_range_a_backup

execute as @s[tag=warrior] run function shop:actualise_advancement/warrior
execute as @s[tag=archer] run function shop:actualise_advancement/archer
execute as @s[tag=mage] run function shop:actualise_advancement/mage
execute as @s[tag=rogue] run function shop:actualise_advancement/rogue

function main:gui/reset_actionbar_bars

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