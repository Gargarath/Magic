## appelée par levels/decrease_level
# réduit de 1 le niveau

scoreboard players remove $spell2 class_selector_rogue 1
execute if score $spell2 class_selector_rogue matches ..0 run scoreboard players set $spell2 class_selector_rogue 1

function lobby:class_selector/rogue/pages/spell2/levels/display_current_level
# affiche le niveau actuel