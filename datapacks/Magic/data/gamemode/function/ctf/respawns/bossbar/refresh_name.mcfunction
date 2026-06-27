## appelée par le refresh de la bossbar de réapparition et par un changement de langue
# permet d'appliquer à la bossbar de @s son nom traduit

$execute if score @s Player matches 1 run bossbar set respawn:player1 name {"text":"$(tr_respawn_bossbar)","color":"red"}
$execute if score @s Player matches 2 run bossbar set respawn:player2 name {"text":"$(tr_respawn_bossbar)","color":"red"}
$execute if score @s Player matches 3 run bossbar set respawn:player3 name {"text":"$(tr_respawn_bossbar)","color":"red"}
$execute if score @s Player matches 4 run bossbar set respawn:player4 name {"text":"$(tr_respawn_bossbar)","color":"red"}
$execute if score @s Player matches 5 run bossbar set respawn:player5 name {"text":"$(tr_respawn_bossbar)","color":"red"}
$execute if score @s Player matches 6 run bossbar set respawn:player6 name {"text":"$(tr_respawn_bossbar)","color":"red"}
$execute if score @s Player matches 7 run bossbar set respawn:player7 name {"text":"$(tr_respawn_bossbar)","color":"red"}
$execute if score @s Player matches 8 run bossbar set respawn:player8 name {"text":"$(tr_respawn_bossbar)","color":"red"}
$execute if score @s Player matches 9 run bossbar set respawn:player9 name {"text":"$(tr_respawn_bossbar)","color":"red"}
$execute if score @s Player matches 10 run bossbar set respawn:player10 name {"text":"$(tr_respawn_bossbar)","color":"red"}
$execute if score @s Player matches 11 run bossbar set respawn:player11 name {"text":"$(tr_respawn_bossbar)","color":"red"}
$execute if score @s Player matches 12 run bossbar set respawn:player12 name {"text":"$(tr_respawn_bossbar)","color":"red"}
