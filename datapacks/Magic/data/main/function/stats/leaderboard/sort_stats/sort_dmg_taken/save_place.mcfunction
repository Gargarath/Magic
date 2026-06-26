## appelée par get_place
# permet de save dans le storage les stat de @s selon quel joueur il était

$data modify storage stats:leaderboards by_stat.stat_dmg_taken."$(rank)" set from storage stats:leaderboards by_player."$(player)"

# score = stat_dmg_taken de @s
$execute store result storage stats:leaderboards by_stat.stat_dmg_taken."$(rank)".score int 1 run scoreboard players get @s stat_dmg_taken