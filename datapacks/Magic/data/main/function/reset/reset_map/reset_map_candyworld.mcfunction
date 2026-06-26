# appelée par blue_win / red_win / draw / stop_game et go_to_shop permet de reset la map bonbon

setblock 11 125 -711 air
# allume le beacon bleu
setblock -49 125 -767 air
# allume le beacon rouge

execute as @a[tag=sugar_way] run function gamemode:ctf/maps_systems/candyworld/sugar_way/exit_sugar_way
#reset le systeme de chemins rapide

function main:reset/reset_living_cherry
# reset l'objectif secondaire tuer la cerise vivante

gamerule fall_damage true

## PAINS D'EPICE

kill @e[type=minecraft:text_display,tag=gringerbread_cooldown]
# détruit les area_effect_cloud qui affiche le cooldown des pains d'épices
kill @e[type=minecraft:armor_stand,tag=gingerbread_motion]
# détruit les armor_stand qui gèrent la motion du joueur

bossbar set gingerbread_kick_area:player1 players
bossbar set gingerbread_kick_area:player2 players
bossbar set gingerbread_kick_area:player3 players
bossbar set gingerbread_kick_area:player4 players
bossbar set gingerbread_kick_area:player5 players
bossbar set gingerbread_kick_area:player6 players
bossbar set gingerbread_kick_area:player7 players
bossbar set gingerbread_kick_area:player8 players
bossbar set gingerbread_kick_area:player9 players
bossbar set gingerbread_kick_area:player10 players
bossbar set gingerbread_kick_area:player11 players
bossbar set gingerbread_kick_area:player12 players

scoreboard players set ready_blue gingerbread 1
scoreboard players set ready_red gingerbread 1
scoreboard players set cooldown_blue gingerbread -1
scoreboard players set cooldown_red gingerbread -1
scoreboard players set travel_timer_blue gingerbread -1
scoreboard players set travel_timer_red gingerbread -1

tag @a remove gingerbread_passenger_blue
tag @a remove gingerbread_passenger_red
execute as @a run ride @s dismount

clone -18 141 -710 -11 150 -703 -52 177 -708
# tête devient contente pain d'épice bleu
clone -30 145 -700 -23 152 -693 -54 160 -712
# baisse le pied pain d'épice bleu
clone -27 141 -775 -20 150 -768 7 177 -777
# tête devient contente pain d'épice rouge
clone -8 152 -778 -15 145 -785 9 160 -773
# baisse le pied pain d'épice rouge