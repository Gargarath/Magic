## appelée par check_startable si l'option de matchmaking est activée
# permet de lancer le matchmaking (équilibrage classe + équipe



function lobby:check_game_startable/matchmaking/save_class_and_team
# sauvegarde les équipes et classes déjà séléctionnées

tag @a[tag=!blue_spectator,tag=!red_spectator] remove mm_needs
tag @a[scores={team_side=0,Player=0},tag=!blue_spectator,tag=!red_spectator] add mm_needs
tag @a[scores={class_id=0,Player=0},tag=!blue_spectator,tag=!red_spectator] add mm_needs
#Marquer ceux qui ont besoin d'une assignation (sans équipe OU sans classe)


function lobby:check_game_startable/matchmaking/setup_count
# Comptes initiaux (servent à équilibrer en tenant compte des choix déjà faits)


function lobby:check_game_startable/matchmaking/attribution/attribution_loop
# Boucle : prend 1 joueur à la fois (aléatoire), assigne, met à jour les comptes, recommence