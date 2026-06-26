## appelée par look_at_X selon ce que @s regarde

# si score prix positif -> actualise avec prix de base
$execute unless score %-1 numbers matches $(price) run data merge entity @n[type=text_display,tag=shop_overlay] {text:["                                                       ",\
{"text":"\n $(item_name)","bold":true},\
{"text":"\n\n $(tr_shop_item_overlay_price_1) ","color":"gold"},{"text":"\uE634","color":"white"},{"text":" $(price) $(tr_shop_item_overlay_price_2)","color":"gold"},\
\
"\n\n ",$(lore),\
\
"\n \uE401 $(tr_shop_item_overlay_buy_tip)"]}

# si score prix negatif -> actualise avec niveau max
$execute if score %-1 numbers matches $(price) run data merge entity @n[type=text_display,tag=shop_overlay] {text:["                                                       ",\
{"text":"\n $(item_name)","bold":true},\
{"text":"\n\n $(tr_shop_item_max_lvl)","color":"red"},\
\
"\n\n ",$(lore)]}