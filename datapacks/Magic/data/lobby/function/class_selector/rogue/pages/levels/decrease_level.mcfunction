## appelée par check_clicked_button
# réduit de 1 le niveau selon la page actuelle

execute if score $current_page class_selector_rogue matches 2 run function lobby:class_selector/rogue/pages/weapon1/decrease_level
execute if score $current_page class_selector_rogue matches 3 run function lobby:class_selector/rogue/pages/spell1/decrease_level
execute if score $current_page class_selector_rogue matches 4 run function lobby:class_selector/rogue/pages/spell2/decrease_level
execute if score $current_page class_selector_rogue matches 5 run function lobby:class_selector/rogue/pages/spell3/decrease_level