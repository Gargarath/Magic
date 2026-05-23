## appelée par display_current_level
## affiche le bon niveau

## TEXTE
data merge entity @e[type=text_display,tag=mage_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.0f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"yellow","text":"Tempête de foudre II - 60 PH"},{"bold":false,"color":"green","text":"\n\nAprès 1,25 secondes, déclenche une\ntempête de foudre dans la direction visée.\n\nLa tempête infligera 48 points de\ndégâts par seconde pendant 6\nsecondes dans un rayon de 5 blocs.\n\n\n"},{"bold":false,"color":"white","text":"\n\nTemps de recharge: 22s."}],background:16711680}



## LEVEL

$data merge entity @e[type=text_display,tag=mage_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_item_level) 2"}]}
# text
