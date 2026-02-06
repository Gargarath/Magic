## appelée par display_current_level
## affiche le bon niveau

## TEXTE
data merge entity @e[type=text_display,tag=archer_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"red","text":"Flèche explosive III - 240 PH"},{"bold":false,"color":"green","text":"\n\nVotre prochaine flèche explosera 0,4s après avoir touché sa cible ou le sol, infligeant 8 à 32 points de dégâts dans un rayon de 15 blocs.\n\nLes dégâts varient selon le temps de charge du tir.\n\nL'effet de ce sort peut être cumulé avec celui de la flèche de glace."},{"bold":false,"color":"white","text":"\n\nTemps de recharge : 15s."}],background:16711680}



## LEVEL

data merge entity @e[type=text_display,tag=archer_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"Niveau 3"}]}
# text
