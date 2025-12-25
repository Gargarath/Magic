## appelée par levels/decrease_level
# réduit de 1 le niveau

scoreboard players remove $spell1 class_selector_warrior 1
execute if score $spell1 class_selector_warrior matches ..0 run scoreboard players set $spell1 class_selector_warrior 3

function lobby:class_selector/warrior/pages/spell1/levels/display_current_level
# affiche le niveau actuel