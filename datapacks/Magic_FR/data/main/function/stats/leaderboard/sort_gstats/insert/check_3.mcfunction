## appelée par check_4
# permet de check si @s est 3ème ou plus


# met le 3 dans le 4

$scoreboard players operation $rank4 gstat_$(class)_score = $rank3 gstat_$(class)_score

$data modify storage stats:global $(mode).$(stat).$(class).4.name set from storage stats:global $(mode).$(stat).$(class).3.name
$data modify storage stats:global $(mode).$(stat).$(class).4.head.player.id set from storage stats:global $(mode).$(stat).$(class).3.head.player.id
$data modify storage stats:global $(mode).$(stat).$(class).4.score set from storage stats:global $(mode).$(stat).$(class).3.score

# check si @s est meilleur que 2
$execute if score @s $(stat) > $rank2 gstat_$(class)_score run return run function main:stats/leaderboard/sort_gstats/insert/check_2 with storage stats:temp


# si pas meilleur ->  met @s dans le 3

$scoreboard players operation $rank3 gstat_$(class)_score = @s $(stat)

$data modify storage stats:global $(mode).$(stat).$(class).3.name set from storage stats:temp name
$data modify storage stats:global $(mode).$(stat).$(class).3.head.player.id set from storage stats:temp head.player.id
$data modify storage stats:global $(mode).$(stat).$(class).3.score set from storage stats:temp score