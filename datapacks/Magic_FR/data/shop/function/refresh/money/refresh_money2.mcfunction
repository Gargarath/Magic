## appelée quand on doit actualiser l'argent de @s
# actualise l'argent de @s

# traduction du titre
$data merge entity @n[type=text_display,tag=shop_money_display_price1,tag=shop_money_display_$(player)] {text:[{"text":"\n\uE634","color":"white"},{"text":" $(tr_shop_money_display_price1_1)","color":"yellow"},{"text":" $(tr_shop_money_display_price1_2) ","color":"yellow"}]}

# montant argent
$data merge entity @n[type=text_display,tag=shop_money_display_price2,tag=shop_money_display_$(player)] {text:{"text":"$(PH)","color":"gold","bold":true}}