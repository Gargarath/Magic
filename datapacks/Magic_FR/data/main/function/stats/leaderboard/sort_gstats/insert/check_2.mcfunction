## appelée par check_3
# permet de check si @s est 2ème ou plus


# met le 2 dans le 3

$scoreboard players operation $rank3 gstat_$(class)_score = $rank2 gstat_$(class)_score

$data modify storage stats:global $(mode).$(stat).$(class).3.name set from storage stats:global $(mode).$(stat).$(class).2.name
$data modify storage stats:global $(mode).$(stat).$(class).3.head.player.id set from storage stats:global $(mode).$(stat).$(class).2.head.player.id
$data modify storage stats:global $(mode).$(stat).$(class).3.score set from storage stats:global $(mode).$(stat).$(class).2.score

# check si @s est meilleur que 1
$execute if score @s $(stat) > $rank1 gstat_$(class)_score run return run function main:stats/leaderboard/sort_gstats/insert/check_1 with storage stats:temp


# si pas meilleur ->  met @s dans le 2

$scoreboard players operation $rank2 gstat_$(class)_score = @s $(stat)

$data modify storage stats:global $(mode).$(stat).$(class).2.name set from storage stats:temp name
$data modify storage stats:global $(mode).$(stat).$(class).2.head.player.id set from storage stats:temp head.player.id
$data modify storage stats:global $(mode).$(stat).$(class).2.score set from storage stats:temp score