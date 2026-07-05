## Planifie le prochain revenu passif selon l'option FFA. 0 = jamais.

execute store result storage gamemode:ffa_money_distribution schedule.delay int 1 run scoreboard players get $passive_income_speed option_panel
execute if score $passive_income_speed option_panel matches 1..30 run function gamemode:ffa/money_distribution/schedule_next_macro with storage gamemode:ffa_money_distribution schedule
