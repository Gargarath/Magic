# appelée par start_game et go_to_shop
# affiche le message sur le menu d'amélio pour @s

$tellraw @s ["",{"text":"\n$(tr_upgrade_tree_1) ","color":"aqua"},{"keybind":"key.inventory","color":"yellow"},{"text":" $(tr_upgrade_tree_2)","color":"aqua"}]
# Indique à tous les joueurs qu'ils peuvent voir leur progression dans l'arbre en appuyant sur la touche advancements
