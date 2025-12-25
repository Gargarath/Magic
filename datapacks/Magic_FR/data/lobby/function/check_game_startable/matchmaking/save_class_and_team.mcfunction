## appelée par start_matchmaking
# permet de stocker les classes et équipe déjà séléctionnées

# Reset
scoreboard players set @a team_side 0

# Save équipe
scoreboard players set @a[tag=blue_team] team_side 1
scoreboard players set @a[tag=red_team] team_side 2