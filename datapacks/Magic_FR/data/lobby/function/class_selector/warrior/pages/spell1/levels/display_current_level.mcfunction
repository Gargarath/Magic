## appelée par decrease_level ou increase_level
# affiche le niveau actuel

execute if score $spell1 class_selector_warrior matches 1 run function lobby:class_selector/warrior/pages/spell1/levels/level1 with storage lobby:language translate
execute if score $spell1 class_selector_warrior matches 2 run function lobby:class_selector/warrior/pages/spell1/levels/level2 with storage lobby:language translate
execute if score $spell1 class_selector_warrior matches 3 run function lobby:class_selector/warrior/pages/spell1/levels/level3 with storage lobby:language translate