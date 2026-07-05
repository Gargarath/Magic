## Active ou désactive les notifications du revenu passif FFA.

scoreboard players add @s opt_passive_income_alert 1
execute if score @s opt_passive_income_alert matches 2 run scoreboard players set @s opt_passive_income_alert 0
