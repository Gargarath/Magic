## appelée par display_current_level
## affiche le bon niveau

## TEXTE
data merge entity @e[type=text_display,tag=archer_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.5f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"white","text":"Arc de combat IV - 40 PH"},{"bold":true,"color":"green","text":"\n\nPuissance 3 : 10 à 20 points de dégats (selon la charge)\n\nRecul 1\n\nCarquois  : 3 flèches\n"}],background:16711680}


## LEVEL

$data merge entity @e[type=text_display,tag=archer_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_item_level) 4"}]}
# text
