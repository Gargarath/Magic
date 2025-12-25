# appelée par spells:spellsystem/weapon1_m/use_stick/stickspell/trail
# permet de calculer la longueur de la chaine du sort

scoreboard players add @s weapon1_range_m 1
# ajoute 1 au score de @s pour chaque block que son sort parcours

execute if entity @s[team=blue,tag=!no_team] if score @s weapon1_range_m < @s weapon1_max_range_m run function spells:spellsystem/weapon1_m/use_stick/stickspell/trail_blue
execute if entity @s[team=red,tag=!no_team] if score @s weapon1_range_m < @s weapon1_max_range_m run function spells:spellsystem/weapon1_m/use_stick/stickspell/trail_red
execute if entity @s[tag=no_team] if score @s weapon1_range_m < @s weapon1_max_range_m run function spells:spellsystem/weapon1_m/use_stick/stickspell/trail
# tant que la distance est inferieure au max -> le sort avance