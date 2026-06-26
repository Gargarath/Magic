## appelée quand on doit actualiser l'argent de @s
# actualise l'argent de @s

# montant argent
$execute if score $infinite_money option_panel matches 0 run return run data merge entity @n[type=text_display,tag=shop_money_display_price2,tag=shop_money_display_$(player)] {text:["                                           ",{"text":"\n$(PH)","color":"gold","bold":true}]}

$data merge entity @n[type=text_display,tag=shop_money_display_price2,tag=shop_money_display_$(player)] {text:["                                           ",{"text":"\n∞","color":"gold","bold":true}]}