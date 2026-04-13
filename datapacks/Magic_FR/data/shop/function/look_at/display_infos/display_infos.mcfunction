## appelée par look_at_boots selon ce que @s regarde

$data merge entity @n[type=text_display,tag=shop_overlay] {text:["                                                  ",\
{"text":"\n$(item_name)","bold":true},\
{"text":"\n\n$(tr_shop_item_overlay_price_1) ","color":"gold"},{"text":"\uE634","color":"white"},{"text":" $(price) $(tr_shop_item_overlay_price_2)","color":"gold"},\
\
{"text":"$(lore)","color":"gold"},\
\
"\n\n\uE401 $(tr_shop_item_overlay_buy_tip)"]}