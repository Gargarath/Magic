## appelée par spell1_m/refresh_bossbar quand @s a fini de bruler
# enleve la brulure de @s


scoreboard players set @s burning -1
item replace entity @s armor.head with air
# enleve le bloc de magma sur la tête de @s

execute if score @s Player matches 1 run bossbar set burning:player1 players
execute if score @s Player matches 2 run bossbar set burning:player2 players
execute if score @s Player matches 3 run bossbar set burning:player3 players
execute if score @s Player matches 4 run bossbar set burning:player4 players
execute if score @s Player matches 5 run bossbar set burning:player5 players
execute if score @s Player matches 6 run bossbar set burning:player6 players
execute if score @s Player matches 7 run bossbar set burning:player7 players
execute if score @s Player matches 8 run bossbar set burning:player8 players
execute if score @s Player matches 9 run bossbar set burning:player9 players
execute if score @s Player matches 10 run bossbar set burning:player10 players
execute if score @s Player matches 11 run bossbar set burning:player11 players
execute if score @s Player matches 12 run bossbar set burning:player12 players