## appelée par display_current_level
## affiche le bon niveau

## TEXTE
data merge entity @e[type=text_display,tag=warrior_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"dark_red","text":"Berzerk II - 150 PH"},{"bold":false,"color":"green","text":"\n\nAugmente les dégâts infligés de 9 points pendant 4s.\nAugmente la vitesse de déplacement de 20% pendant 4s"},{"bold":false,"color":"red","text":"\n\nRéduit les points de vie maximum de 30% pendant 4s.\nSupprime la resistance de l'armure pendant 4s."},{"bold":false,"color":"white","text":"\n\nTemps de recharge: 20s."}],background:16711680}



## LEVEL

$data merge entity @e[type=text_display,tag=warrior_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_item_level) 2"}]}
# text
