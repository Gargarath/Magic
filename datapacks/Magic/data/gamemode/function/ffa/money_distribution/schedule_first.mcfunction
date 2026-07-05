## Planifie le premier revenu passif. Aucun schedule si la cadence vaut Never.

execute store result storage gamemode:ffa_money_distribution schedule.delay int 1 run scoreboard players get $first_income_delay option_panel
execute if score $passive_income_speed option_panel matches 1..30 run function gamemode:ffa/money_distribution/schedule_first_macro with storage gamemode:ffa_money_distribution schedule
