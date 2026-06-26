## appelée par check_clicked_button
# réduit de 1 le niveau selon la page actuelle

execute if score $current_page class_selector_archer matches 2 run function lobby:class_selector/archer/pages/weapon1/decrease_level
execute if score $current_page class_selector_archer matches 3 run function lobby:class_selector/archer/pages/spell1/decrease_level
execute if score $current_page class_selector_archer matches 4 run function lobby:class_selector/archer/pages/spell2/decrease_level
execute if score $current_page class_selector_archer matches 5 run function lobby:class_selector/archer/pages/spell3/decrease_level