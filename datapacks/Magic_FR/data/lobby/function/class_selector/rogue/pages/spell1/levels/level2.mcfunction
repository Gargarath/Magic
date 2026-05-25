## appelée par display_current_level
## affiche le bon niveau

## TEXTE
$data merge entity @e[type=text_display,tag=rogue_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"red","text":"$(tr_rogue_spell1_2_name)"},{"text":"\n\n $(tr_shop_item_overlay_price_1) ","color":"gold"},{"text":"\uE634","color":"white"},{"text":" $(stuff_rogue_spell1_2_price) $(tr_shop_item_overlay_price_2)","color":"gold"},{"bold":false,"color":"green","text":"\n\n$(tr_rogue_spell1_2_lore_2) $(tr_rogue_spell1_2_lore_3)\n\n$(tr_rogue_spell1_2_lore_5) $(tr_rogue_spell1_2_lore_6)\n\n$(tr_rogue_spell1_2_lore_8)\n\n$(tr_rogue_spell1_2_lore_10)\n$(tr_rogue_spell1_2_lore_11)"},{"bold":false,"color":"white","text":"\n\n$(tr_rogue_spell1_2_lore_13)"}],background:16711680}


## LEVEL

$data merge entity @e[type=text_display,tag=rogue_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_item_level) 2"}]}
# text
