## appelée par get_place
# permet de save dans le storage les stat de @s selon quel joueur il était

$data modify storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)" set from storage stats:leaderboards by_player.$(player)

# score = stat_kd_ratio1000 de @s
$execute store result storage stats:leaderboards by_stat.stat_kd_ratio."$(rank)".score int 1 run scoreboard players get @s stat_kd_ratio1000

scoreboard players operation @s stat_kd_tmp = @s stat_kd_ratio1000
# copie le ratio x 1000 en temporaire pour manip (et conserver le ratio x 1000)

scoreboard players operation @s stat_kd_ratio1 = @s stat_kd_tmp
scoreboard players operation @s stat_kd_ratio1 /= $1000 operations
# partie entière = ratio x 1000 / 1000

scoreboard players operation @s stat_kd_ratio2 = @s stat_kd_tmp
scoreboard players operation @s stat_kd_ratio2 %= $1000 operations
# reste = % 1000 (=modulo 1000 - on divise par 1000 et garde les décimales)

scoreboard players add @s stat_kd_ratio2 5
scoreboard players operation @s stat_kd_ratio2 /= $10 operations
# arrondi à 2 décimales : (la décimale + 5) / 10 -> si décimale = 242 -> 242+5=247 247/10 = 24 -> on a bien arrondi au plus proche


execute if score @s stat_kd_ratio2 matches 100 run scoreboard players add @s stat_kd_ratio1 1
execute if score @s stat_kd_ratio2 matches 100 run scoreboard players set @s stat_kd_ratio2 0
# si jamais en ayant rajouté ce +5 et divisé par 10 on arrive à 100 - exemple si décimale = 996 -> 996+5=1001 -> 1001/10 = 100 -> alors on ajoute 1 à la partie entière et on reset la décimale

$execute store result storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).kd_ratio1 int 1 run scoreboard players get @s stat_kd_ratio1
$execute store result storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).kd_ratio2 int 1 run scoreboard players get @s stat_kd_ratio2
# stock le ratio dans le storage


$execute if score @s stat_kd_ratio2 matches ..9 if score @s stat_kd_ratio1000 matches ..999 run data modify storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).kd_ratio_comma set value {"text":",0","color":"dark_red","bold":true}
$execute if score @s stat_kd_ratio2 matches ..9 if score @s stat_kd_ratio1000 matches 1000.. run data modify storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).kd_ratio_comma set value {"text":",0","color":"dark_green","bold":true}
$execute if score @s stat_kd_ratio2 matches ..9 if score @s stat_kd_ratio1000 matches 1500.. run data modify storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).kd_ratio_comma set value {"text":",0","color":"gold","bold":true}
# --- modifie la couleur de la virgule selon si le kd et ajoute un 0 si la décimale est inférieure à 10

$execute if score @s stat_kd_ratio2 matches 10.. if score @s stat_kd_ratio1000 matches ..999 run data modify storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).kd_ratio_comma set value {"text":",","color":"dark_red","bold":true}
$execute if score @s stat_kd_ratio2 matches 10.. if score @s stat_kd_ratio1000 matches 1000.. run data modify storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).kd_ratio_comma set value {"text":",","color":"dark_green","bold":true}
$execute if score @s stat_kd_ratio2 matches 10.. if score @s stat_kd_ratio1000 matches 1500.. run data modify storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).kd_ratio_comma set value {"text":",","color":"gold","bold":true}
# --- modifie la couleur de la virgule selon si le kd et ajoute un 0 si la décimale est inférieure à 10


$data remove storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).positive
$data remove storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).big
$execute if score @s stat_kd_ratio1000 matches 1000.. run data modify storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).positive set value 1b
$execute if score @s stat_kd_ratio1000 matches 1500.. run data modify storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).big set value 1b
# met un flag dans le storage selon la taille du ratio (pour les couleurs dans le tableau des scores)

## STOCKE LE RATIO POUR LE LIVRE DE STATS

$data remove storage stats:leaderboards by_player.$(player).kd_ratio.positive

$data remove storage stats:leaderboards by_player.$(player).kd_ratio.big

$execute if score @s stat_kd_ratio1000 matches 1000.. run data modify storage stats:leaderboards by_player.$(player).kd_ratio.positive set value 1b

$execute if score @s stat_kd_ratio1000 matches 1500.. run data modify storage stats:leaderboards by_player.$(player).kd_ratio.big set value 1b

$data modify storage stats:leaderboards by_player.$(player).stat_kd_ratio1 set from storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).kd_ratio1

$data modify storage stats:leaderboards by_player.$(player).kd_ratio_comma set from storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).kd_ratio_comma

$data modify storage stats:leaderboards by_player.$(player).stat_kd_ratio2 set from storage stats:leaderboards by_stat.stat_kd_ratio.$(rank).kd_ratio2