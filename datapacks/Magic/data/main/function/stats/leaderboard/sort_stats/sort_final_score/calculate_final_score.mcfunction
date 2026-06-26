## appelée par sort_stats au nom des joueurs de la dernière game
## permet de calculer leur score general

scoreboard players operation @s stat_temp = @s stat_killcount
scoreboard players operation @s stat_final_score += @s stat_temp
# + kill * 1

scoreboard players operation @s stat_temp = @s stat_obj_score
scoreboard players operation @s stat_temp *= %5 numbers
scoreboard players operation @s stat_temp /= %10 numbers
scoreboard players operation @s stat_final_score += @s stat_temp
# + obj score * 0.5

scoreboard players operation @s stat_temp = @s stat_total_dmg
scoreboard players operation @s stat_temp /= %50 numbers
scoreboard players operation @s stat_final_score += @s stat_temp
# + dégats / 50

scoreboard players operation @s stat_temp = @s stat_deathcount
scoreboard players operation @s stat_temp *= %8 numbers
scoreboard players operation @s stat_temp /= %10 numbers
scoreboard players operation @s stat_final_score -= @s stat_temp
# - mort * 0.8

execute if score @s stat_final_score matches ..-1 run scoreboard players set @s stat_final_score 0
# si @s a un final score négatif -> le met à 0 