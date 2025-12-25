## appelée par display_current_level
## affiche le bon niveau

## TEXTE
data merge entity @e[type=text_display,tag=archer_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"aqua","text":"Flèche de glace II - 150 PH"},{"bold":false,"color":"green","text":"\n\nVotre prochaine flèche diminuera la vitesse de la cible de 45% pendant 5 secondes.\n\nSi la cible porte un drapeau, ce dernier tombera au sol immédiatement.\nSi la cible est en feu, l'effet de brûlure sera annulé.\n \nL'effet de ce sort peut être cumulé avec celui de la flèche explosive."},{"bold":false,"color":"white","text":"\n\nTemps de recharge: 15s."}],background:16711680}



## LEVEL

data merge entity @e[type=text_display,tag=archer_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":"Niveau 2"}]}
# text
