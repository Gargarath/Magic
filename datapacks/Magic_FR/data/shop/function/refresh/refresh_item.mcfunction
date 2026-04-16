## appelée quand on doit actualiser un item
# actualise l'item du shop selon la classe de @s et son niveau d'item

# item
$data merge entity @n[type=item_display,tag=shop_$(item_category)_$(player)] {item:{id:"$(item_id)",count:1,components:{"minecraft:custom_model_data":{strings:["$(custommodeldata)"]}}}}

# price
# rend le prix vert si achetable
$execute unless score %-1 numbers matches $(price) if score @s PH matches $(price).. run data merge entity @n[type=text_display,tag=shop_$(item_category)_price,tag=shop_$(item_category)_$(player)] {background:-1778168053,text:{"color":"green","text":"$(price)"}}
# rend le prix rouge si trop cher
$execute unless score %-1 numbers matches $(price) unless score @s PH matches $(price).. run data merge entity @n[type=text_display,tag=shop_$(item_category)_price,tag=shop_$(item_category)_$(player)] {background:-1770192896,text:{"color":"red","text":"$(price)"}}
# enlève le prix si = -1 (pas de prix)
$execute if score %-1 numbers matches $(price) run data merge entity @n[type=text_display,tag=shop_$(item_category)_price,tag=shop_$(item_category)_$(player)] {text:{"text":""}}

# level
$data merge entity @n[type=text_display,tag=shop_$(item_category)_level,tag=shop_$(item_category)_$(player)] {text:"$(level)"}
