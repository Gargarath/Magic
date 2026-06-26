## appelée par check_clicked_button
# augmente de 1 le niveau selon la page actuelle

execute if score $current_page class_selector_mage matches 2 run function lobby:class_selector/mage/pages/weapon1/increase_level
execute if score $current_page class_selector_mage matches 3 run function lobby:class_selector/mage/pages/spell1/increase_level
execute if score $current_page class_selector_mage matches 4 run function lobby:class_selector/mage/pages/spell2/increase_level
execute if score $current_page class_selector_mage matches 5 run function lobby:class_selector/mage/pages/spell3/increase_level