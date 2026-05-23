## appelée par display_current_level
## affiche le bon niveau

## TEXTE
data merge entity @e[type=text_display,tag=mage_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"white","text":"Bâton de combat"},{"bold":true,"color":"green","text":"\n\nCe bâton miteux est incapable de lancer le moindre sort...\n\nMais au moins vous avez une arme !\n\n\n\n\n\n"}],background:16711680}


## LEVEL

$data merge entity @e[type=text_display,tag=mage_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_item_level) 0"}]}
# text