## appelée par display_current_level
## affiche le bon niveau

## TEXTE
$data merge entity @e[type=text_display,tag=rogue_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,4f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"white","text":"$(tr_rogue_weapon1_10_name)"},{"text":"\n\n $(tr_shop_item_overlay_price_1) ","color":"gold"},{"text":"\uE634","color":"white"},{"text":" $(stuff_rogue_weapon1_10_price) $(tr_shop_item_overlay_price_2)","color":"gold"},{"bold":true,"color":"green","text":"\n\n$(tr_rogue_weapon1_10_lore_1)"}],background:16711680}


## LEVEL

$data merge entity @e[type=text_display,tag=rogue_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_item_level) 10"}]}
# text
