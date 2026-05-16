## appelee quand l'historique ou le shop change
# actualise l'apparence des boutons undo / redo de @s

$execute if score @s shop_history_can_undo matches 1 run data merge entity @n[type=item_display,tag=shop_undo_$(player)] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["undo"]}}}}
$execute unless score @s shop_history_can_undo matches 1 run data merge entity @n[type=item_display,tag=shop_undo_$(player)] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["undo_unpossible"]}}}}

$execute if score @s shop_history_can_redo matches 1 run data merge entity @n[type=item_display,tag=shop_redo_$(player)] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["redo"]}}},start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.05f],scale:[0.4f,0.4f,0.4f]}}
$execute unless score @s shop_history_can_redo matches 1 run data merge entity @n[type=item_display,tag=shop_redo_$(player)] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["redo"]}}},start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.05f],scale:[0f,0f,0f]}}

$execute if score @s shop_history_can_redo matches 1 run data merge entity @n[type=item_display,tag=shop_redo_all_$(player)] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["redo_all"]}}},start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.05f],scale:[0.4f,0.4f,0.4f]}}
$execute unless score @s shop_history_can_redo matches 1 run data merge entity @n[type=item_display,tag=shop_redo_all_$(player)] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["redo_all"]}}},start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.05f],scale:[0f,0f,0f]}}

$execute if score @s shop_history_can_redo matches 1 run data merge entity @n[type=text_display,tag=shop_redo_text,tag=shop_redo_$(player)] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
$execute unless score @s shop_history_can_redo matches 1 run data merge entity @n[type=text_display,tag=shop_redo_text,tag=shop_redo_$(player)] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

$execute if score @s shop_history_can_redo matches 1 run data merge entity @n[type=text_display,tag=shop_redo_all_text1,tag=shop_redo_all_$(player)] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
$execute unless score @s shop_history_can_redo matches 1 run data merge entity @n[type=text_display,tag=shop_redo_all_text1,tag=shop_redo_all_$(player)] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

$execute if score @s shop_history_can_redo matches 1 run data merge entity @n[type=text_display,tag=shop_redo_all_text2,tag=shop_redo_all_$(player)] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}
$execute unless score @s shop_history_can_redo matches 1 run data merge entity @n[type=text_display,tag=shop_redo_all_text2,tag=shop_redo_all_$(player)] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

$execute if score @s shop_history_can_redo matches 1 run data merge entity @n[type=interaction,tag=shop_redo_$(player)] {width:0.45f,height:0.45f}
$execute unless score @s shop_history_can_redo matches 1 run data merge entity @n[type=interaction,tag=shop_redo_$(player)] {width:0f,height:0f}

$execute if score @s shop_history_can_redo matches 1 run data merge entity @n[type=interaction,tag=shop_redo_all_$(player)] {width:0.45f,height:0.45f}
$execute unless score @s shop_history_can_redo matches 1 run data merge entity @n[type=interaction,tag=shop_redo_all_$(player)] {width:0f,height:0f}
