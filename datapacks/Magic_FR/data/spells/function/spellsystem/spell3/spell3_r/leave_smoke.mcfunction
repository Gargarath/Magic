# appelee par spells:loop quand @s sort de la smoke

scoreboard players set @s in_smoke1 -1
execute if score @s Player matches 1 run bossbar set smoke_bomb:blinded_player1 players
execute if score @s Player matches 2 run bossbar set smoke_bomb:blinded_player2 players
execute if score @s Player matches 3 run bossbar set smoke_bomb:blinded_player3 players
execute if score @s Player matches 4 run bossbar set smoke_bomb:blinded_player4 players
execute if score @s Player matches 5 run bossbar set smoke_bomb:blinded_player5 players
execute if score @s Player matches 6 run bossbar set smoke_bomb:blinded_player6 players
execute if score @s Player matches 7 run bossbar set smoke_bomb:blinded_player7 players
execute if score @s Player matches 8 run bossbar set smoke_bomb:blinded_player8 players
execute if score @s Player matches 9 run bossbar set smoke_bomb:blinded_player9 players
execute if score @s Player matches 10 run bossbar set smoke_bomb:blinded_player10 players
execute if score @s Player matches 11 run bossbar set smoke_bomb:blinded_player11 players
execute if score @s Player matches 12 run bossbar set smoke_bomb:blinded_player12 players