# Appelée par 
# permet de réduire le timer de 1s et de l'actualiser
# 1) On enlève 1 seconde
scoreboard players remove $time timers 1


# 2) minutes = #time / 60
scoreboard players operation $minutes timers = $time timers
scoreboard players operation $minutes timers /= #60 operations


# 3) secondes = #time % 60
scoreboard players operation $seconds timers = $time timers
scoreboard players operation $seconds timers %= #60 operations


# 4) dizaine = sec / 10
scoreboard players operation #seconds1 timers = $seconds timers
scoreboard players operation #seconds1 timers /= #10 operations

#  unité = sec % 10
scoreboard players operation #seconds2 timers = $seconds timers
scoreboard players operation #seconds2 timers %= #10 operations

execute if score $secondary_objectives option_panel matches 1 if score on secnd_objective matches 0 run function gamemode:ctf/timer/objective_decount_timer
# si les objectifs secondaires sont activé et que l'objectif secondaire ne s'est pas encore déclanché -> continue le décompte

function gamemode:ctf/timer/timer_actualise/timer_actualise
# actualise le timer

schedule function gamemode:ctf/timer/refresh_timer 1s
# réduit le chrono de 1 dans 1s