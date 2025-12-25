## appelée par spells:loop
## permet de clear la bossbar de @s

scoreboard players set @s thunderstrm_time -1
execute if score @s Player matches 1 run bossbar set thunderstorm:player1 players
execute if score @s Player matches 2 run bossbar set thunderstorm:player2 players
execute if score @s Player matches 3 run bossbar set thunderstorm:player3 players
execute if score @s Player matches 4 run bossbar set thunderstorm:player4 players
execute if score @s Player matches 5 run bossbar set thunderstorm:player5 players
execute if score @s Player matches 6 run bossbar set thunderstorm:player6 players
execute if score @s Player matches 7 run bossbar set thunderstorm:player7 players
execute if score @s Player matches 8 run bossbar set thunderstorm:player8 players
execute if score @s Player matches 9 run bossbar set thunderstorm:player9 players
execute if score @s Player matches 10 run bossbar set thunderstorm:player10 players
execute if score @s Player matches 11 run bossbar set thunderstorm:player11 players
execute if score @s Player matches 12 run bossbar set thunderstorm:player12 players

execute if score $no_cooldowns option_panel matches 0 if score @s spell2 matches 1 run scoreboard players set @s cooldownspell2 24
execute if score $no_cooldowns option_panel matches 0 if score @s spell2 matches 1 run function stuff:stuff_mage/cooldowns_m/spell2/spell2lvl1_m
execute if score $no_cooldowns option_panel matches 0 if score @s spell2 matches 2 run scoreboard players set @s cooldownspell2 22
execute if score $no_cooldowns option_panel matches 0 if score @s spell2 matches 2 run function stuff:stuff_mage/cooldowns_m/spell2/spell2lvl2_m
execute if score $no_cooldowns option_panel matches 0 if score @s spell2 matches 3 run scoreboard players set @s cooldownspell2 19
execute if score $no_cooldowns option_panel matches 0 if score @s spell2 matches 3 run function stuff:stuff_mage/cooldowns_m/spell2/spell2lvl3_m
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldown2_clock 20

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell2 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown2_clock 5