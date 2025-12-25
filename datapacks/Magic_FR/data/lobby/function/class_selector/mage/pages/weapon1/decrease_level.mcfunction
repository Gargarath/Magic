## appelée par levels/decrease_level
# réduit de 1 le niveau

scoreboard players remove $weapon1 class_selector_mage 1
execute if score $weapon1 class_selector_mage matches ..-1 run scoreboard players set $weapon1 class_selector_mage 10

function lobby:class_selector/mage/pages/weapon1/levels/display_current_level
# affiche le niveau actuel