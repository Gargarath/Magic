# appelée par blue_win / red_win / draw / stop_game et go_to_shop permet de reset la map pirate

execute if score $time_change option_panel matches 1 run time set 6000
# met la journée si l'option de changement du temps est activé

setblock -493 123 -128 air
# allume le beacon bleu
setblock -545 123 -94 air
# allume le beacon rouge

function main:reset/reset_golem
# reset l'objectif secondaire tuer le golem

scoreboard players set @a in_water -1
effect clear @a minecraft:poison

advancement revoke @a only main:used_bed

forceload remove -584 -24 -454 -198
# deforceload la map