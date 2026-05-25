## appelée par decrease_level ou increase_level
# affiche le niveau actuel

execute if score $spell2 class_selector_archer matches 1 run function lobby:class_selector/archer/pages/spell2/levels/level1 with storage lobby:language translate
execute if score $spell2 class_selector_archer matches 2 run function lobby:class_selector/archer/pages/spell2/levels/level2 with storage lobby:language translate
execute if score $spell2 class_selector_archer matches 3 run function lobby:class_selector/archer/pages/spell2/levels/level3 with storage lobby:language translate
