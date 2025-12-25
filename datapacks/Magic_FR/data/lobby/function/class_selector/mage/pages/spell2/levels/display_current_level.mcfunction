## appelée par decrease_level ou increase_level
# affiche le niveau actuel

execute if score $spell2 class_selector_mage matches 1 run function lobby:class_selector/mage/pages/spell2/levels/level1
execute if score $spell2 class_selector_mage matches 2 run function lobby:class_selector/mage/pages/spell2/levels/level2
execute if score $spell2 class_selector_mage matches 3 run function lobby:class_selector/mage/pages/spell2/levels/level3