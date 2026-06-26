## appelée par check_2
# permet de mettre @s premier


# met le 1 dans le 2

$scoreboard players operation $rank2 gstat_$(class)_score = $rank1 gstat_$(class)_score

$data modify storage stats:global $(mode).$(stat).$(class).2.name set from storage stats:global $(mode).$(stat).$(class).1.name
$data modify storage stats:global $(mode).$(stat).$(class).2.head.player.id set from storage stats:global $(mode).$(stat).$(class).1.head.player.id
$data modify storage stats:global $(mode).$(stat).$(class).2.score set from storage stats:global $(mode).$(stat).$(class).1.score

# met @s dans le 1

$scoreboard players operation $rank1 gstat_$(class)_score = @s $(stat)

$data modify storage stats:global $(mode).$(stat).$(class).1.name set from storage stats:temp name
$data modify storage stats:global $(mode).$(stat).$(class).1.head.player.id set from storage stats:temp head.player.id
$data modify storage stats:global $(mode).$(stat).$(class).1.score set from storage stats:temp score