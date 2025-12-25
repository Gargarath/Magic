## appelée par increase/decrease_level
# augmente de 1 le niveau

scoreboard players add $spell2 class_selector_mage 1
execute if score $spell2 class_selector_mage matches 4.. run scoreboard players set $spell2 class_selector_mage 1

function lobby:class_selector/mage/pages/spell2/levels/display_current_level
# affiche le niveau actuel