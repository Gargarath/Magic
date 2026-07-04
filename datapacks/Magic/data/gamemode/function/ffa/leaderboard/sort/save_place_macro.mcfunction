## macro appelée par save_place avec {rank:<rang>,player:<numéro>}

$data modify storage minecraft:gui ffa.score.rank$(rank).name set from storage main:killfeed name.$(player)
$execute store result storage minecraft:gui ffa.score.rank$(rank).score int 1 run scoreboard players get @s stat_killcount_player
