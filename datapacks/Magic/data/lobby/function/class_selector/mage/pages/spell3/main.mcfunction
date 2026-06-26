## appelée par check_clicked_button
## affiche la page spell3

scoreboard players set $current_page class_selector_mage 5

kill @e[type=interaction,tag=mage_selector_top_menu]
summon interaction ^-4 ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","mage_selector","mage_selector_top_menu","class_selector_mage_clickable","mage_passive"]}
# passif
summon interaction ^-2 ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","mage_selector","mage_selector_top_menu","class_selector_mage_clickable","mage_weapon"]}
# weapon1
summon interaction ^ ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","mage_selector","mage_selector_top_menu","class_selector_mage_clickable","mage_spell1"]}
# spell1
summon interaction ^2 ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","mage_selector","mage_selector_top_menu","class_selector_mage_clickable","mage_spell2"]}
# spell2

## TOP MENU
execute as @e[type=text_display,tag=mage_selector_top_menu] run data modify entity @s text.underlined set value false
execute as @e[type=text_display,tag=mage_selector_top_menu] run data modify entity @s text.color set value white

data modify entity @e[type=text_display,tag=mage_selector_spell3_text,limit=1] text.underlined set value true
data modify entity @e[type=text_display,tag=mage_selector_spell3_text,limit=1] text.color set value green

## TEXTE
function lobby:class_selector/mage/pages/spell3/levels/display_current_level


## LEVEL

data merge entity @e[type=item_display,tag=mage_selector_left_arrow,limit=1] {item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_model_data":{strings:["air"]}}}}
# left_arrow
data merge entity @e[type=text_display,tag=mage_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":""}]}
# text
data merge entity @e[type=item_display,tag=mage_selector_right_arrow,limit=1] {item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_model_data":{strings:["air"]}}}}
# right_arrow