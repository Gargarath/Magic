## appelée par increase/decrease_level
# augmente de 1 le niveau

scoreboard players add $spell2 class_selector_warrior 1
execute if score $spell2 class_selector_warrior matches 4.. run scoreboard players set $spell2 class_selector_warrior 1

function lobby:class_selector/warrior/pages/spell2/levels/display_current_level
# affiche le niveau actuel