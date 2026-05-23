## appelée par display_current_level
## affiche le bon niveau

## TEXTE
data merge entity @e[type=text_display,tag=rogue_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"red","text":"Embuscade II - 150 PH"},{"bold":false,"color":"green","text":"\n\nVous vous camouflez dans l'ombre ce qui vous rends invisible.\n\nLes dégats de votre prochaine attaque augmentent de 6 points.\n\nDurée de l’invisibilité : 6s.\n\nSubir ou infliger des dégâts annule l'effet.\nInteragir avec les drapeaux annule l'effet.\n\n"},{"bold":false,"color":"white","text":"\n\nTemps de recharge: 10s."}],background:16711680}


## LEVEL

$data merge entity @e[type=text_display,tag=rogue_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_item_level) 2"}]}
# text
