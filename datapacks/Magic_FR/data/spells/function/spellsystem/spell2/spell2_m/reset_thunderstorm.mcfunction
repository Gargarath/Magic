## appelée par ctf:respawn si @s meurt en ayant la tempête de foudre active

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

execute if score @s Player matches 1 run kill @e[type=area_effect_cloud,tag=player1_cloud]
execute if score @s Player matches 2 run kill @e[type=area_effect_cloud,tag=player2_cloud]
execute if score @s Player matches 3 run kill @e[type=area_effect_cloud,tag=player3_cloud]
execute if score @s Player matches 4 run kill @e[type=area_effect_cloud,tag=player4_cloud]
execute if score @s Player matches 5 run kill @e[type=area_effect_cloud,tag=player5_cloud]
execute if score @s Player matches 6 run kill @e[type=area_effect_cloud,tag=player6_cloud]
execute if score @s Player matches 7 run kill @e[type=area_effect_cloud,tag=player7_cloud]
execute if score @s Player matches 8 run kill @e[type=area_effect_cloud,tag=player8_cloud]
execute if score @s Player matches 9 run kill @e[type=area_effect_cloud,tag=player9_cloud]
execute if score @s Player matches 10 run kill @e[type=area_effect_cloud,tag=player10_cloud]
execute if score @s Player matches 11 run kill @e[type=area_effect_cloud,tag=player11_cloud]
execute if score @s Player matches 12 run kill @e[type=area_effect_cloud,tag=player12_cloud]