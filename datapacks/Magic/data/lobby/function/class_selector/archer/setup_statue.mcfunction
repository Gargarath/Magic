## appelée par setup_statues
# permet d'invoquer le système d'info et de sélection de la classe archer

## STATUE
summon mannequin ^-3.5 ^ ^0.3 {Invulnerable:1b,immovable:true,Rotation:[143.3F,0F],Tags:["class_selector","archer_selector","archer_selector_statue"],attributes:[{id:"minecraft:scale",base:4}],profile:{texture:"skins/archer_master"}}
item replace entity @e[tag=archer_selector_statue,limit=1] weapon from block 13 95 13 container.10
# archer mannequin

## TITRE ET DESCRIPTION
$summon text_display ^ ^12.5 ^ {billboard:"horizontal",see_through:0b,Tags:["class_selector","archer_selector","archer_selector_title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:{"bold":true,"color":"dark_green","text":"$(tr_lobby_archer_title)",shadow_color:-13487566},background:16711680}
# archer title
$summon text_display ^ ^11 ^-0.5 {billboard:"horizontal",line_width:300,default_background:0b,shadow:1b,see_through:0b,alignment:"left",Tags:["class_selector","archer_selector","archer_selector_description"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"bold":true,"color":"white","text":"$(tr_lobby_archer_description)"}],background:16711680}
# archer description

## PASSIF
$summon text_display ^-4 ^9 ^-0.5 {billboard:"horizontal",line_width:300,default_background:0b,shadow:1b,see_through:0b,alignment:"left",Tags:["class_selector","archer_selector","archer_selector_top_menu","archer_selector_passive_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_passive)"}],background:16711680}
# text
summon item_display ^-4 ^9.2 ^ {billboard:"horizontal",item_display:"head",Tags:["class_selector","archer_selector","archer_selector_passive_icon"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:ender_eye",count:1}}
# icon

## WEAPON
$summon text_display ^-2 ^9 ^-0.5 {billboard:"horizontal",line_width:300,default_background:0b,shadow:1b,see_through:0b,alignment:"left",Tags:["class_selector","archer_selector","archer_selector_top_menu","archer_selector_weapon1_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_weapon)"}],background:16711680}
# text
summon item_display ^-2 ^9.2 ^ {billboard:"horizontal",item_display:"head",Tags:["class_selector","archer_selector","archer_selector_weapon1_icon"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:bow",count:1}}
# icon

## SPELL1
$summon text_display ^ ^9 ^-0.5 {billboard:"horizontal",line_width:300,default_background:0b,shadow:1b,see_through:0b,alignment:"left",Tags:["class_selector","archer_selector","archer_selector_top_menu","archer_selector_spell1_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell1)"}],background:16711680}
# text
summon item_display ^ ^9.2 ^ {billboard:"horizontal",item_display:"head",Tags:["class_selector","archer_selector","archer_selector_spell1_icon"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":{strings:["spell1_a"]}}}}
# icon


## SPELL2
$summon text_display ^2 ^9 ^-0.5 {billboard:"horizontal",line_width:300,default_background:0b,shadow:1b,see_through:0b,alignment:"left",Tags:["class_selector","archer_selector","archer_selector_top_menu","archer_selector_spell2_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell2)"}],background:16711680}
# text
summon item_display ^2 ^9.2 ^ {billboard:"horizontal",item_display:"head",Tags:["class_selector","archer_selector","archer_selector_spell2_icon"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":{strings:["spell3_a"]}}}}
# icon

## SPELL3
$summon text_display ^4 ^9 ^-0.5 {billboard:"horizontal",line_width:300,default_background:0b,shadow:1b,see_through:0b,alignment:"left",Tags:["class_selector","archer_selector","archer_selector_top_menu","archer_selector_spell3_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_spell3)"}],background:16711680}
# text
summon item_display ^4 ^9.2 ^ {billboard:"horizontal",item_display:"head",Tags:["class_selector","archer_selector","archer_selector_spell3_icon"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":{strings:["spell2_a"]}}}}
# icon

## LEVEL
summon item_display ^-0.5 ^0.3 ^ {billboard:"horizontal",item_display:"head",Tags:["class_selector","archer_selector","archer_selector_left_arrow"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["class_selector/left_arrow"]}}}}
# left_arrow
$summon text_display ^1.4 ^0.88 ^ {billboard:"horizontal",line_width:300,default_background:0b,shadow:1b,see_through:0b,alignment:"center",Tags:["class_selector","archer_selector","archer_selector_level_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},text:[{"underlined":false,"bold":false,"color":"white","text":"$(tr_lobby_item_level) 1"}],background:16711680}
# text
summon item_display ^2.5 ^0.3 ^ {billboard:"horizontal",item_display:"head",Tags:["class_selector","archer_selector","archer_selector_right_arrow"],glow_color_override:16701501,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:oak_sign",count:1,components:{"minecraft:custom_model_data":{strings:["class_selector/right_arrow"]}}}}
# right_arrow


## DEVENIR ARCHER
$summon text_display ^-3.4 ^1.0 ^1.2 {billboard:"horizontal",line_width:100,default_background:0b,shadow:1b,see_through:0b,alignment:"center",Tags:["class_selector","archer_selector","archer_selector_selector"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},text:[{"underlined":false,"bold":true,"color":"yellow","text":"$(tr_lobby_choose_class)"}],background:16711680}
# text
summon interaction ^-3.4 ^1.0 ^0.8 {width:2.1f,height:0.7,response:1b,Tags:["class_selector","archer_selector","class_selector_archer_clickable","archer_become_archer"]}
# become_archer clickable

## TEXTE
summon text_display ^2 ^1.5 ^ {billboard:"fixed",line_width:210,default_background:0b,shadow:1b,see_through:0b,alignment:"left",Tags:["class_selector","archer_selector","archer_selector_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},text:["",{"underlined":true,"bold":true,"color":"gray","text":"Grappin I"},{"bold":true,"color":"green","text":"\n\nLance un grappin dans la direction visée, qui ramènera le premier joueur adverse dans une distance de 25 blocs.\n\nLe joueur ramené est également étourdit pendant 2 secondes et subit 1 point de dégât.\n\nL'étourdissement empêche l'utilisation des sorts.\n\nVitesse du grappin 30 blocs / seconde"},{"bold":true,"color":"white","text":"\n\nTemps de recharge: 15s."},{"bold":true,"color":"white","text":"\n\nTemps de recharge en cas de collision proche: 2s."}],background:16711680}
# texte d'info

scoreboard players set $current_page class_selector_archer 1
scoreboard players set $passive class_selector_archer 1
scoreboard players set $weapon1 class_selector_archer 1
scoreboard players set $spell1 class_selector_archer 1
scoreboard players set $spell2 class_selector_archer 1
scoreboard players set $spell3 class_selector_archer 1
# initialise les numéros de pages
function lobby:class_selector/archer/pages/passive/main
# affiche la page passif