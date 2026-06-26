## appelée par main:kilfeed/_entity_killed_player quand @s tue un joueur en FFA
# permet de lui donner de l'argent

scoreboard players operation @s PH += $ph_per_kills option_panel
scoreboard players operation @s stat_total_money_earned += $ph_per_kills option_panel