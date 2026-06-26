## appelée par increase/decrease_level
# augmente de 1 le niveau

scoreboard players add $weapon1 class_selector_archer 1
execute if score $weapon1 class_selector_archer matches 11.. run scoreboard players set $weapon1 class_selector_archer 0

function lobby:class_selector/archer/pages/weapon1/levels/display_current_level
# affiche le niveau actuel