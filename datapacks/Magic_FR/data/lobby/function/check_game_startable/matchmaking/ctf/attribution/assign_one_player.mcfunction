## appelée par attribution_loop
# permet d'assigner @s à une classe et une équipe

execute if score @s team_side matches 0 run function lobby:check_game_startable/matchmaking/ctf/attribution/pick_team
# donne une équipe à @s si il n'en a pas déjà une

execute if score @s class_id matches 0 run function lobby:check_game_startable/matchmaking/ctf/attribution/pick_class
# donne une classe à @s si il n'en a pas déjà une

# Blue
execute if score @s team_side matches 1 run function lobby:team_selector/display_team_members/blue/new_member

# Red
execute if score @s team_side matches 2 run function lobby:team_selector/display_team_members/red/new_member

function lobby:team_selector/give_lobby_team
# donne sa team de lobby à @s selon sa classe et son équipe

tag @s remove mm_needs
# enlève @s de la boucle d'assignation
