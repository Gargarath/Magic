## appelée par refresh_bossbar si le timer de @s est fini
## permet de lancer le cd de @s et d'enlever sa bossbar

execute if score @s Player matches 1 run bossbar set smoke_bomb:player1 players
execute if score @s Player matches 2 run bossbar set smoke_bomb:player2 players
execute if score @s Player matches 3 run bossbar set smoke_bomb:player3 players
execute if score @s Player matches 4 run bossbar set smoke_bomb:player4 players
execute if score @s Player matches 5 run bossbar set smoke_bomb:player5 players
execute if score @s Player matches 6 run bossbar set smoke_bomb:player6 players
execute if score @s Player matches 7 run bossbar set smoke_bomb:player7 players
execute if score @s Player matches 8 run bossbar set smoke_bomb:player8 players
execute if score @s Player matches 9 run bossbar set smoke_bomb:player9 players
execute if score @s Player matches 10 run bossbar set smoke_bomb:player10 players
execute if score @s Player matches 11 run bossbar set smoke_bomb:player11 players
execute if score @s Player matches 12 run bossbar set smoke_bomb:player12 players

execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldownspell3 10
execute if score $no_cooldowns option_panel matches 0 run scoreboard players set @s cooldown3_clock 20
execute if score $no_cooldowns option_panel matches 0 run function stuff:stuff_rogue/cooldowns_r/spell3/spell3lvl1_r with entity @s EnderItems[0].components.minecraft:custom_data

execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldownspell3 0
execute if score $no_cooldowns option_panel matches 1 run scoreboard players set @s cooldown3_clock 5
