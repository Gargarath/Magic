## appelée par increase/decrease_level
# augmente de 1 le niveau

scoreboard players add $spell3 class_selector_archer 1
execute if score $spell3 class_selector_archer matches 4.. run scoreboard players set $spell3 class_selector_archer 1

function lobby:class_selector/archer/pages/spell3/levels/display_current_level
# affiche le niveau actuel