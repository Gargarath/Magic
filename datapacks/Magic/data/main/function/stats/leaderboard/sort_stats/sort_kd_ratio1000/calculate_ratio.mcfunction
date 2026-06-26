## Appelée par sort_stats/sort_kd_ratio1000, permet de calculer le ratio de @s


# stat_kd_num = kills
scoreboard players operation @s stat_kd_num = @s stat_killcount

# stat_kd_den = deaths (min 1 pour éviter /0)
scoreboard players operation @s stat_kd_den = @s stat_deathcount
execute if score @s stat_kd_den matches 0 run scoreboard players set @s stat_kd_den 1

# stat_kd_ratio1000 = kills * 1000 / den
scoreboard players set @s stat_kd_ratio1000 1000
scoreboard players operation @s stat_kd_ratio1000 *= @s stat_kd_num
scoreboard players operation @s stat_kd_ratio1000 /= @s stat_kd_den
