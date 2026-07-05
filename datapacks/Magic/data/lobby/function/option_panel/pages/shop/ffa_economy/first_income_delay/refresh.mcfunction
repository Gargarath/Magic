# Supprime le sélecteur uniquement lorsque le revenu passif est désactivé.
execute if score $passive_income_speed option_panel matches 0 run kill @e[tag=optn_menu_ffa_first_income_delay]

# Crée le sélecteur uniquement lorsqu'il devient nécessaire et n'existe pas encore.
execute if score $passive_income_speed option_panel matches 1..30 unless entity @n[type=item_display,tag=optn_menu_ffa_first_income_delay] run function lobby:option_panel/pages/shop/ffa_economy/first_income_delay/create with storage lobby:language translate
