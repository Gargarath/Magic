## appelée par display_current_level
## affiche le bon niveau

## TEXTE
data merge entity @e[type=text_display,tag=mage_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"white","text":"Bâton de combat I - 10 PH"},{"bold":true,"color":"green","text":"\n\n+0.5 point d'attaque.\n\nLance un sort dans la direction visée, il infligera 6 points de dégats au premier joueur adverse rencontré.\n\nPortée maximale: 20 blocs.\n\nCoût en mana: 90\n"}],background:16711680}


## LEVEL

data merge entity @e[type=text_display,tag=mage_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"Niveau 1"}]}
# text