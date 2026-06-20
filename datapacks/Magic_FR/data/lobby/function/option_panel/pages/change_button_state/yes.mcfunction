# appelée à chaque fois qu'un bouton OUI/NON devient OUI
# rend le bouton OUI selon la langue

#summon item_display ~-5.9 ~-1.86 ~1.765 {billboard:"fixed",item_display:"head",Tags:["optn_menu","optn_menu_lobby","optn_menu_lobby_clickable","optn_menu_lobby_enable_jump"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["no"]}}}}

data merge entity @s {item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["yes"]}}}}
$data merge entity @n[type=text_display,tag=optn_menu_button_yes_no,distance=..0.6] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.21f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"bold":true,"color":"black","text":"$(tr_optn_menu_button_yes)"}],background:0}