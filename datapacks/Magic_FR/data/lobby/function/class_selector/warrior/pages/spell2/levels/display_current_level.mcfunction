## appelée par decrease_level ou increase_level
# affiche le niveau actuel

execute if score $spell2 class_selector_warrior matches 1 run function lobby:class_selector/warrior/pages/spell2/levels/level1
execute if score $spell2 class_selector_warrior matches 2 run function lobby:class_selector/warrior/pages/spell2/levels/level2
execute if score $spell2 class_selector_warrior matches 3 run function lobby:class_selector/warrior/pages/spell2/levels/level3