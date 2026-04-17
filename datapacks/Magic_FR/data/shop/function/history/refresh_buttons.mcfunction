## appelee quand l'historique ou le shop change
# actualise l'apparence des boutons undo / redo de @s

$execute if score @s shop_history_can_undo matches 1 run data merge entity @n[type=text_display,tag=shop_undo_text,tag=shop_undo_$(player)] {text:[{"text":"Undo","bold":true,"color":"gold"}]}
$execute unless score @s shop_history_can_undo matches 1 run data merge entity @n[type=text_display,tag=shop_undo_text,tag=shop_undo_$(player)] {text:[{"text":"Undo","bold":true,"color":"dark_gray"}]}

$execute if score @s shop_history_can_redo matches 1 run data merge entity @n[type=text_display,tag=shop_redo_text,tag=shop_redo_$(player)] {text:[{"text":"Redo","bold":true,"color":"gold"}]}
$execute unless score @s shop_history_can_redo matches 1 run data merge entity @n[type=text_display,tag=shop_redo_text,tag=shop_redo_$(player)] {text:[{"text":"Redo","bold":true,"color":"dark_gray"}]}
