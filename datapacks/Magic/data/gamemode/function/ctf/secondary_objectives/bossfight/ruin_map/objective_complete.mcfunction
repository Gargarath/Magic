# appelée par ctf:secondary_objectives/bossfight/ruin_map/win/blue_win ou ctf:secondary_objectives/bossfight/ruin_map/win/red_win
# permet de stoper le système d'objectif secondaire


scoreboard players set on golem 0
# arrete la clock sur l'objectif secondaire

function gamemode:ctf/secondary_objectives/bossbar/hide_all
# clear les bossbar de l'objectif secondaire
