## appelée par increase/decrease_level
# augmente de 1 le niveau

scoreboard players add $spell3 class_selector_warrior 1
execute if score $spell3 class_selector_warrior matches 2.. run scoreboard players set $spell3 class_selector_warrior 1

function lobby:class_selector/warrior/pages/spell3/levels/display_current_level
# affiche le niveau actuel