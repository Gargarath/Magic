## appelée par start_matchmaking
# permet d'assigner les joueurs à une classe et une équipe

execute as @a[tag=mm_needs,sort=random,limit=1] run function lobby:check_game_startable/matchmaking/ctf/attribution/assign_one_player
# Prend un joueur au hasard qui a encore besoin d'une affectation


execute if entity @a[tag=mm_needs] run schedule function lobby:check_game_startable/matchmaking/ctf/attribution/attribution_loop 1t
# S'il en reste, on reprogramme la boucle pour le tick suivant


execute unless entity @a[tag=mm_needs] run schedule function main:start_game/start_game 2t
# si il ne reste plus de joueur sans classe ou équipe -> lance la game
