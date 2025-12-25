# Appellée par ctf:loop quand il se lance
#permet de lancer le timer de 3/2/1

scoreboard players reset $enable_game_countdown timers

schedule function main:launch_arena/countdown/spawn_timer 5t
# lance le spawn dans 1t (pour que les joueurs soient bien inclinés