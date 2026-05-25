## appelée par display_current_level
## affiche le bon niveau

## TEXTE
$data merge entity @e[type=text_display,tag=mage_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"white","text":"$(tr_mage_weapon1_9_name)"},{"text":"\n\n $(tr_shop_item_overlay_price_1) ","color":"gold"},{"text":"\uE634","color":"white"},{"text":" $(stuff_mage_weapon1_9_price) $(tr_shop_item_overlay_price_2)","color":"gold"},{"bold":true,"color":"green","text":"\n\n$(tr_mage_weapon1_9_lore_1)\n\n$(tr_mage_weapon1_9_lore_3) $(tr_mage_weapon1_9_lore_4) $(tr_mage_weapon1_9_lore_5)\n\n$(tr_mage_weapon1_9_lore_6)\n\n$(tr_mage_weapon1_9_lore_7)"}],background:16711680}


## LEVEL

$data merge entity @e[type=text_display,tag=mage_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_item_level) 9"}]}
# text
