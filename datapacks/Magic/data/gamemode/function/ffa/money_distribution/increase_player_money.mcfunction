## appelée par schedule lancé par start_game/ffa
# permet de donner de l'argent régulièrement aux joueurs

execute if score $infinite_money option_panel matches 1 run return run function gamemode:ffa/money_distribution/schedule_next

execute if score $passive_income_speed option_panel matches 1.. run scoreboard players operation @a[scores={Player=1..}] PH += $passive_money option_panel
execute if score $passive_income_speed option_panel matches 1.. run scoreboard players operation @a[scores={Player=1..}] stat_total_money_earned += $passive_money option_panel
execute if score $passive_income_speed option_panel matches 1.. if score $passive_money option_panel matches 1.. as @a[scores={Player=1..,opt_passive_income_alert=1}] run function main:gui/ffa_money_alert/show_passive with entity @s EnderItems[0].components.minecraft:custom_data

execute if score $passive_income_speed option_panel matches 1.. as @a[scores={Player=1..,InShop=1}] run function shop:refresh/money/refresh_money
# actualise le compteur de sous des joueurs qui sont dans le shop

function gamemode:ffa/money_distribution/schedule_next
