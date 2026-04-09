## appelée par check_5
# permet de check si @s est 4ème ou plus


# met le 4 dans le 5

$scoreboard players operation $rank5 gstat_$(class)_score = $rank4 gstat_$(class)_score

$data modify storage stats:global $(mode).$(stat).$(class).5.name set from storage stats:global $(mode).$(stat).$(class).4.name
$data modify storage stats:global $(mode).$(stat).$(class).5.head.player.id set from storage stats:global $(mode).$(stat).$(class).4.head.player.id
$data modify storage stats:global $(mode).$(stat).$(class).5.score set from storage stats:global $(mode).$(stat).$(class).4.score

# check si @s est meilleur que 3

$execute if score @s $(stat) > $rank3 gstat_$(class)_score run return run function main:stats/leaderboard/sort_gstats/insert/check_3 with storage stats:temp


# si pas meilleur ->  met @s dans le 4

$scoreboard players operation $rank4 gstat_$(class)_score = @s $(stat)

$data modify storage stats:global $(mode).$(stat).$(class).4.name set from storage stats:temp name
$data modify storage stats:global $(mode).$(stat).$(class).4.head.player.id set from storage stats:temp head.player.id
$data modify storage stats:global $(mode).$(stat).$(class).4.score set from storage stats:temp score

