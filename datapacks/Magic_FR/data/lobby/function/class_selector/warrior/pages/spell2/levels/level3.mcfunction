## appelée par display_current_level
## affiche le bon niveau

## TEXTE
data merge entity @e[type=text_display,tag=warrior_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"gold","text":"Drapeau de ralliement III - 90 PH"},{"bold":false,"color":"green","text":"\n\nVous posez un drapeau de ralliement à votre emplacement.\n\nLe drapeau augmente de 40% votre résitance aux dégâts ainsi que celle de vos alliés dans un rayon de 5 blocs.\n\nLe drapeau disparait après 11 secondes."},{"bold":false,"color":"white","text":"\n\nTemps de recharge: 10s."}],background:16711680}


## LEVEL

data merge entity @e[type=text_display,tag=warrior_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"Niveau 3"}]}
# text
