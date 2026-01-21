# appelée par blue_win / red_win / draw / stop_game et go_to_shop permet de reset la map bonbon

setblock 11 145 -711 air
# allume le beacon bleu
setblock -49 145 -767 air
# allume le beacon rouge

tag @a remove sugar_way
execute as @a run attribute @s minecraft:movement_speed base set 0.10000000149011612
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

clone -18 161 -710 -11 170 -703 -52 197 -708
# tête devient contente pain d'épice bleu
clone -30 165 -700 -23 172 -693 -54 180 -712
# baisse le pied pain d'épice bleu
clone -27 161 -775 -20 170 -768 7 197 -777
# tête devient contente pain d'épice rouge
clone -8 172 -778 -15 165 -785 9 180 -773
# baisse le pied pain d'épice rouge