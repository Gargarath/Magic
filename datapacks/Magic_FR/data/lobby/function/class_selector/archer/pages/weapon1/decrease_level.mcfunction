## appelée par levels/decrease_level
# réduit de 1 le niveau

scoreboard players remove $weapon1 class_selector_archer 1
execute if score $weapon1 class_selector_archer matches ..-1 run scoreboard players set $weapon1 class_selector_archer 10

function lobby:class_selector/archer/pages/weapon1/levels/display_current_level
# affiche le niveau actuel