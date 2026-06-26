## appelée par check_clicked_button
## affiche la page spell2

scoreboard players set $current_page class_selector_warrior 4

kill @e[type=interaction,tag=warrior_selector_top_menu]
summon interaction ^-4 ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","warrior_selector","warrior_selector_top_menu","class_selector_warrior_clickable","warrior_passive"]}
# passif
summon interaction ^-2 ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","warrior_selector","warrior_selector_top_menu","class_selector_warrior_clickable","warrior_weapon"]}
# weapon1
summon interaction ^ ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","warrior_selector","warrior_selector_top_menu","class_selector_warrior_clickable","warrior_spell1"]}
# spell1
summon interaction ^4 ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","warrior_selector","warrior_selector_top_menu","class_selector_warrior_clickable","warrior_spell3"]}
# spell3
summon interaction ^ ^0.7 ^ {width:0.8f,height:0.5,response:1b,Tags:["class_selector","warrior_selector","warrior_selector_top_menu","class_selector_warrior_clickable","warrior_left_arrow"]}
# left clickable
summon interaction ^3 ^0.7 ^ {width:0.8f,height:0.5,response:1b,Tags:["class_selector","warrior_selector","warrior_selector_top_menu","class_selector_warrior_clickable","warrior_right_arrow"]}
# right clickable

## TOP MENU
execute as @e[type=text_display,tag=warrior_selector_top_menu] run data modify entity @s text.underlined set value false
execute as @e[type=text_display,tag=warrior_selector_top_menu] run data modify entity @s text.color set value white

data modify entity @e[type=text_display,tag=warrior_selector_spell2_text,limit=1] text.underlined set value true
data modify entity @e[type=text_display,tag=warrior_selector_spell2_text,limit=1] text.color set value green

## TEXTE
function lobby:class_selector/warrior/pages/spell2/levels/display_current_level


## LEVEL

data merge entity @e[type=item_display,tag=warrior_selector_left_arrow,limit=1] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["class_selector/left_arrow"]}}}}
# left_arrow
data merge entity @e[type=item_display,tag=warrior_selector_right_arrow,limit=1] {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["class_selector/right_arrow"]}}}}
# right_arrow