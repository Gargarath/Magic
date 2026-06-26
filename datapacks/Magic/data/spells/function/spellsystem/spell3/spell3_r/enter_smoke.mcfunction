# appelee par spells:loop quand @s rentre dans la smoke

scoreboard players set @s in_smoke1 1

$execute if score @s Player matches 1 run bossbar set smoke_bomb:blinded_player1 name {"text":"$(tr_bossbar_blinded)","color":"gray","bold":true}
$execute if score @s Player matches 2 run bossbar set smoke_bomb:blinded_player2 name {"text":"$(tr_bossbar_blinded)","color":"gray","bold":true}
$execute if score @s Player matches 3 run bossbar set smoke_bomb:blinded_player3 name {"text":"$(tr_bossbar_blinded)","color":"gray","bold":true}
$execute if score @s Player matches 4 run bossbar set smoke_bomb:blinded_player4 name {"text":"$(tr_bossbar_blinded)","color":"gray","bold":true}
$execute if score @s Player matches 5 run bossbar set smoke_bomb:blinded_player5 name {"text":"$(tr_bossbar_blinded)","color":"gray","bold":true}
$execute if score @s Player matches 6 run bossbar set smoke_bomb:blinded_player6 name {"text":"$(tr_bossbar_blinded)","color":"gray","bold":true}
$execute if score @s Player matches 7 run bossbar set smoke_bomb:blinded_player7 name {"text":"$(tr_bossbar_blinded)","color":"gray","bold":true}
$execute if score @s Player matches 8 run bossbar set smoke_bomb:blinded_player8 name {"text":"$(tr_bossbar_blinded)","color":"gray","bold":true}
$execute if score @s Player matches 9 run bossbar set smoke_bomb:blinded_player9 name {"text":"$(tr_bossbar_blinded)","color":"gray","bold":true}
$execute if score @s Player matches 10 run bossbar set smoke_bomb:blinded_player10 name {"text":"$(tr_bossbar_blinded)","color":"gray","bold":true}
$execute if score @s Player matches 11 run bossbar set smoke_bomb:blinded_player11 name {"text":"$(tr_bossbar_blinded)","color":"gray","bold":true}
$execute if score @s Player matches 12 run bossbar set smoke_bomb:blinded_player12 name {"text":"$(tr_bossbar_blinded)","color":"gray","bold":true}

execute if score @s Player matches 1 run bossbar set smoke_bomb:blinded_player1 players @s
execute if score @s Player matches 2 run bossbar set smoke_bomb:blinded_player2 players @s
execute if score @s Player matches 3 run bossbar set smoke_bomb:blinded_player3 players @s
execute if score @s Player matches 4 run bossbar set smoke_bomb:blinded_player4 players @s
execute if score @s Player matches 5 run bossbar set smoke_bomb:blinded_player5 players @s
execute if score @s Player matches 6 run bossbar set smoke_bomb:blinded_player6 players @s
execute if score @s Player matches 7 run bossbar set smoke_bomb:blinded_player7 players @s
execute if score @s Player matches 8 run bossbar set smoke_bomb:blinded_player8 players @s
execute if score @s Player matches 9 run bossbar set smoke_bomb:blinded_player9 players @s
execute if score @s Player matches 10 run bossbar set smoke_bomb:blinded_player10 players @s
execute if score @s Player matches 11 run bossbar set smoke_bomb:blinded_player11 players @s
execute if score @s Player matches 12 run bossbar set smoke_bomb:blinded_player12 players @s