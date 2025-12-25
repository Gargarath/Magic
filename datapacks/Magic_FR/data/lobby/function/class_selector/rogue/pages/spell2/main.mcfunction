## appelée par check_clicked_button
## affiche la page spell2

scoreboard players set $current_page class_selector_rogue 4

kill @e[type=interaction,tag=rogue_selector_top_menu]
summon interaction ^-4 ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","rogue_selector","rogue_selector_top_menu","class_selector_rogue_clickable","rogue_passive"]}
# passif
summon interaction ^-2 ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","rogue_selector","rogue_selector_top_menu","class_selector_rogue_clickable","rogue_weapon"]}
# weapon1
summon interaction ^ ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","rogue_selector","rogue_selector_top_menu","class_selector_rogue_clickable","rogue_spell1"]}
# spell1
summon interaction ^4 ^9 ^-0.2 {width:1.0f,height:1.3,response:1b,Tags:["class_selector","rogue_selector","rogue_selector_top_menu","class_selector_rogue_clickable","rogue_spell3"]}
# spell3

## TOP MENU
execute as @e[type=text_display,tag=rogue_selector_top_menu] run data modify entity @s text.underlined set value false
execute as @e[type=text_display,tag=rogue_selector_top_menu] run data modify entity @s text.color set value white

data modify entity @e[type=text_display,tag=rogue_selector_spell2_text,limit=1] text.underlined set value true
data modify entity @e[type=text_display,tag=rogue_selector_spell2_text,limit=1] text.color set value green

## TEXTE
function lobby:class_selector/rogue/pages/spell2/levels/display_current_level


## LEVEL

data merge entity @e[type=item_display,tag=rogue_selector_left_arrow,limit=1] {item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_model_data":{strings:["air"]}}}}
# left_arrow
data merge entity @e[type=text_display,tag=rogue_selector_level_text,limit=1] {text:[{"underlined":false,"bold":false,"color":"white","text":""}]}
# text
data merge entity @e[type=item_display,tag=rogue_selector_right_arrow,limit=1] {item:{id:"minecraft:barrier",count:1,components:{"minecraft:custom_model_data":{strings:["air"]}}}}
# right_arrow