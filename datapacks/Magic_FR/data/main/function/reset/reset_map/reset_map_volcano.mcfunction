# appelée par blue_win / red_win / draw / stop_game et go_to_shop permet de reset la map pirate

execute if score $time_change option_panel matches 1 run time set 6000
# met la journée si l'option de changement du temps est activé

setblock -560 98 470 air
# allume le beacon bleu
setblock -636 98 529 air
# allume le beacon rouge

function main:reset/reset_control_point
# reset l'objectif secondaire point de contrôle

scoreboard players set red steam_timer -1
setblock -598 162 477 minecraft:stone_button[face=wall,facing=north,powered=false]
kill @e[tag=steam_button_red]
# reset zone vapeur rouge
setblock -598 162 522 minecraft:stone_button[face=wall,facing=south,powered=false]
scoreboard players set blue steam_timer -1
kill @e[tag=steam_button_blue]
# reset zone vapeur bleue
advancement revoke @a only main:used_bed

forceload remove -539 443 -656 554
# deforceload la map