## appelée par check_clicked_button
## affiche la page passif

scoreboard players set $current_page class_selector_warrior 1

kill @e[type=interaction,tag=warrior_selector_top_menu]
summon interaction ^-2 ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","warrior_selector","warrior_selector_top_menu","class_selector_warrior_clickable","warrior_weapon"]}
# weapon1
summon interaction ^ ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","warrior_selector","warrior_selector_top_menu","class_selector_warrior_clickable","warrior_spell1"]}
# spell1
summon interaction ^2 ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","warrior_selector","warrior_selector_top_menu","class_selector_warrior_clickable","warrior_spell2"]}
# spell2
summon interaction ^4 ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","warrior_selector","warrior_selector_top_menu","class_selector_warrior_clickable","warrior_spell3"]}
# spell3

## TOP MENU
execute as @e[type=text_display,tag=warrior_selector_top_menu] run data modify entity @s text.underlined set value false
execute as @e[type=text_display,tag=warrior_selector_top_menu] run data modify entity @s text.color set value white

data modify entity @e[type=text_display,tag=warrior_selector_passive_text,limit=1] text.underlined set value true
data modify entity @e[type=text_display,tag=warrior_selector_passive_text,limit=1] text.color set value green

## TEXTE
data merge entity @e[type=text_display,tag=warrior_selector_text,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[1.3f,1.3f,1.3f]},text:["",{"underlined":true,"bold":true,"color":"red","text":"Armure blindée"},{"bold":true,"color":"green","text":"\n\nVotre plastron vous octroie 1.5 fois plus de points de vie"},{"bold":true,"color":"red","text":"\n\nVos jambières vous octroient deux fois moins de vitesse."}],background:16711680}

## LEVEL

data merge entity @e[type=item_display,tag=warrior_selector_left_arrow,limit=1] {item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_model_data":{strings:["air"]}}}}
# left_arrow
data merge entity @e[type=text_display,tag=warrior_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":""}]}
# text
data merge entity @e[type=item_display,tag=warrior_selector_right_arrow,limit=1] {item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_model_data":{strings:["air"]}}}}
# right_arrow

