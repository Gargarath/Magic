## appelée par check_clicked_button
# augmente de 1 le niveau selon la page actuelle

execute if score $current_page class_selector_warrior matches 2 run function lobby:class_selector/warrior/pages/weapon1/increase_level
execute if score $current_page class_selector_warrior matches 3 run function lobby:class_selector/warrior/pages/spell1/increase_level
execute if score $current_page class_selector_warrior matches 4 run function lobby:class_selector/warrior/pages/spell2/increase_level
execute if score $current_page class_selector_warrior matches 5 run function lobby:class_selector/warrior/pages/spell3/increase_level