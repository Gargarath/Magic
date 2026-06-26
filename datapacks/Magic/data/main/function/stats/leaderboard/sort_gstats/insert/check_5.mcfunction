## appelée par sort_final_score submit si @s merite au moins le top 5
# permet de check si @s est 5ème ou plus



# check si @s est meilleur que 4
$execute if score @s $(stat) > $rank4 gstat_$(class)_score run return run function main:stats/leaderboard/sort_gstats/insert/check_4 with storage stats:temp


# si pas meilleur -> met @s dans le 5
$scoreboard players operation $rank5 gstat_$(class)_score = @s $(stat)

$data modify storage stats:global $(mode).$(stat).$(class).5.name set from storage stats:temp name
$data modify storage stats:global $(mode).$(stat).$(class).5.head.player.id set from storage stats:temp head.player.id
$data modify storage stats:global $(mode).$(stat).$(class).5.score set from storage stats:temp score