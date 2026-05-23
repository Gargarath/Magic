#appelée par lobby:loop si @s clique sur un bouton du menu et a le droit
# permet de check quel bouton a été cliqué

execute if score @s operator matches 0 if score $operator_access option_panel matches 0 run function lobby:option_panel/interact_with_menu/not_allowed_admin
execute if score @s operator matches 0 if score $operator_access option_panel matches 1 run function lobby:option_panel/interact_with_menu/not_allowed
# indique que @s peut pas et lui indique comment faire selon le type d'accès modérateur configuré

execute if score @s operator matches 2 as @e[type=minecraft:interaction,tag=optn_menu_clickable] if data entity @s attack run function lobby:option_panel/interact_with_menu/check_left_clicked_button