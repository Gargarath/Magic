## appelée par check_clicked_button
# augmente de 1 le niveau selon la page actuelle

execute if score $current_page class_selector_rogue matches 2 run function lobby:class_selector/rogue/pages/weapon1/increase_level
execute if score $current_page class_selector_rogue matches 3 run function lobby:class_selector/rogue/pages/spell1/increase_level
execute if score $current_page class_selector_rogue matches 4 run function lobby:class_selector/rogue/pages/spell2/increase_level
execute if score $current_page class_selector_rogue matches 5 run function lobby:class_selector/rogue/pages/spell3/increase_level