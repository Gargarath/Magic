## appelée par display_current_level
## affiche le bon niveau

## TEXTE
data merge entity @e[type=text_display,tag=mage_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"red","text":"Trait de feu II - 60 PH"},{"bold":false,"color":"green","text":"\n\nLance un trait de feu dans la direction visée. Il infligera 12 points de dégats au premier adversaire rencontré et 2 points de dégâts de brulure par seconde pendant 3 secondes.\n\nSi la cible est gelée, l'effet de gel sera annulé.\n \nToucher un ennemi avec ce sort réduit son temps de recharge de moitié."},{"bold":false,"color":"white","text":"\n\nTemps de recharge: 14s."}],background:16711680}

## LEVEL

data merge entity @e[type=text_display,tag=mage_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"Niveau 2"}]}
# text
