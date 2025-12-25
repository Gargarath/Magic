## appelée par display_current_level
## affiche le bon niveau

## TEXTE
data merge entity @e[type=text_display,tag=archer_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"gold","text":"Piège à ours I - 90 PH"},{"bold":false,"color":"green","text":"\n\nLance un piège à ours au sol qui immobilisera tout joueur adverse dans un rayon de 1 bloc pendant 2 secondes et lui infligera 6 points de dégâts.\n\n\nLes joueurs immobilisés ne peuvent pas utiliser de sorts.\n\nLe piège est destructible par tous les joueurs."},{"bold":false,"color":"white","text":"\n\nTemps de recharge: 10s."}],background:16711680}

## LEVEL

data merge entity @e[type=text_display,tag=archer_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"Niveau 1"}]}
# text