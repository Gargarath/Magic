## macro appelée par save_place avec {rank:<rang>,player:<numéro>}

$data modify storage minecraft:gui ffa.score.rank$(rank).name set value []
$data modify storage minecraft:gui ffa.score.rank$(rank).name append from storage main:killfeed name.$(player)
$execute if score @s ffa_bounty_level matches 1.. run data modify storage minecraft:gui ffa.score.rank$(rank).name append value {"text":" ⚠ ","color":"gold"}
$execute if score @s ffa_bounty_level matches 1.. run data modify storage minecraft:gui ffa.score.rank$(rank).name append value {"nbt":"ffa.score.rank$(rank).bounty","storage":"minecraft:gui","color":"gold"}
scoreboard players operation @s ffa_bounty_calc = @s ffa_bounty_level
scoreboard players operation @s ffa_bounty_calc *= $ph_per_kills option_panel
$execute store result storage minecraft:gui ffa.score.rank$(rank).bounty int 1 run scoreboard players get @s ffa_bounty_calc
$execute store result storage minecraft:gui ffa.score.rank$(rank).score int 1 run scoreboard players get @s stat_killcount_player
