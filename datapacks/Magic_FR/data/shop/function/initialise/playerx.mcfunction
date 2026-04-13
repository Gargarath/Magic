## appelée par summon_shop pour les 12 players
# permet de setup les entités des shops

$kill @e[type=mannequin,tag=statue_$(player)]
$kill @e[tag=shop_title_$(player)]
$kill @e[tag=shop_money_display_$(player)]
$kill @e[tag=shop_weapon1_$(player)]
$kill @e[tag=shop_chest_$(player)]
$kill @e[tag=shop_legs_$(player)]
$kill @e[tag=shop_boots_$(player)]
$kill @e[tag=shop_spell1_$(player)]
$kill @e[tag=shop_spell2_$(player)]
$kill @e[tag=shop_spell3_$(player)]

# mannequin
$execute at @e[type=marker,tag=shop_room_$(player)] run summon mannequin ~ ~0.7 ~4.45 {NoGravity:1b,Silent:1b,Invulnerable:1b,immovable:true,Rotation:[180F,0F],Tags:["statue_$(player)"],profile:"",hidden_layers:["cape"],attributes:[{id:"minecraft:scale",base:1.2}]}

# titre
$execute at @e[type=marker,tag=shop_room_$(player)] run summon text_display ~ ~4.1 ~4.4 {see_through:0b,shadow:1b,alignment:"left",background:0,billboard:"fixed",Tags:["shop_title","shop_title_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.4f,2.4f,2.4f]},text:{"text":"Magasin","bold":true,"color":"gold"}}

# argent
$execute at @e[type=marker,tag=shop_room_$(player)] run summon text_display ~1.8 ~3.5 ~4.4 {see_through:0b,shadow:1b,alignment:"left",background:0,billboard:"fixed",Tags:["shop_money_display","shop_money_display_price1","shop_money_display_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},text:[{"text":"\n\uE634","color":"white"},{"text":" Points","color":"yellow"},{"text":" d'honneur : ","color":"yellow"}]}
$execute at @e[type=marker,tag=shop_room_$(player)] run summon text_display ~1.8 ~3.1 ~4.4 {see_through:0b,shadow:1b,alignment:"left",background:0,billboard:"fixed",Tags:["shop_money_display","shop_money_display_price2","shop_money_display_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},text:{"score":{"name":"@s","objective":"PH"}}}

# weapon1
$execute at @e[type=marker,tag=shop_room_$(player)] run summon item_display ~2 ~2.5 ~4.4 {item_display:"gui",Tags:["shop_weapon1","shop_weapon1_$(player)"],item:{id:"minecraft:diamond_sword",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_weapon1_$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_weapon1","shop_weapon1_level","shop_weapon1_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}
$execute at @e[type=item_display,tag=shop_weapon1_$(player)] run summon text_display ~-0.35 ~-0.4 ~ {billboard:"fixed",Tags:["shop_weapon1","shop_weapon1_price","shop_weapon1_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_weapon1_$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_weapon1","shop_weapon1_$(player)"]}

# chest
$execute at @e[type=marker,tag=shop_room_$(player)] run summon item_display ~1 ~2.5 ~4.4 {item_display:"gui",Tags:["shop_chest","shop_chest_$(player)"],item:{id:"minecraft:diamond_chestplate",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_chest_$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_chest","shop_chest_level","shop_chest_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}
$execute at @e[type=item_display,tag=shop_chest_$(player)] run summon text_display ~-0.35 ~-0.4 ~ {billboard:"fixed",Tags:["shop_chest","shop_chest_price","shop_chest_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_chest_$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_chest","shop_chest_$(player)"]}

# legs
$execute at @e[type=marker,tag=shop_room_$(player)] run summon item_display ~1 ~1.6 ~4.4 {item_display:"gui",Tags:["shop_legs","shop_legs_$(player)"],item:{id:"minecraft:diamond_leggings",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_legs_$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_legs","shop_legs_level","shop_legs_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}
$execute at @e[type=item_display,tag=shop_legs_$(player)] run summon text_display ~-0.35 ~-0.4 ~ {billboard:"fixed",Tags:["shop_legs","shop_legs_price","shop_legs_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_legs_$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_legs","shop_legs_$(player)"]}

# boots
$execute at @e[type=marker,tag=shop_room_$(player)] run summon item_display ~1 ~0.7 ~4.4 {item_display:"gui",Tags:["shop_boots","shop_boots_$(player)"],item:{id:"minecraft:diamond_boots",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_boots_$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_boots","shop_boots_level","shop_boots_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}
$execute at @e[type=item_display,tag=shop_boots_$(player)] run summon text_display ~-0.35 ~-0.4 ~ {billboard:"fixed",Tags:["shop_boots","shop_boots_price","shop_boots_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_boots_$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_boots","shop_boots_$(player)"]}

# spell1
$execute at @e[type=marker,tag=shop_room_$(player)] run summon item_display ~-1 ~2.5 ~4.4 {item_display:"gui",Tags:["shop_spell1","shop_spell1_$(player)"],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":{strings:["a"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_spell1_$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_spell1","shop_spell1_level","shop_spell1_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE627\uE761\uE627\uE761\uE630"}
$execute at @e[type=item_display,tag=shop_spell1_$(player)] run summon text_display ~-0.35 ~-0.4 ~ {billboard:"fixed",Tags:["shop_spell1","shop_spell1_price","shop_spell1_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_spell1_$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_spell1","shop_spell1_$(player)"]}

# spell2
$execute at @e[type=marker,tag=shop_room_$(player)] run summon item_display ~-1 ~1.6 ~4.4 {item_display:"gui",Tags:["shop_spell2","shop_spell2_$(player)"],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":{strings:["a"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_spell2_$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_spell2","shop_spell2_level","shop_spell2_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE627\uE761\uE627\uE761\uE630"}
$execute at @e[type=item_display,tag=shop_spell2_$(player)] run summon text_display ~-0.35 ~-0.4 ~ {billboard:"fixed",Tags:["shop_spell2","shop_spell2_price","shop_spell2_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_spell2_$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_spell2","shop_spell2_$(player)"]}

# spell3
$execute at @e[type=marker,tag=shop_room_$(player)] run summon item_display ~-1 ~0.7 ~4.4 {item_display:"gui",Tags:["shop_spell3","shop_spell3_$(player)"],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":{strings:["a"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_spell3_$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_spell3","shop_spell3_level","shop_spell3_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE630"}
$execute at @e[type=item_display,tag=shop_spell3_$(player)] run summon text_display ~-0.35 ~-0.4 ~ {billboard:"fixed",Tags:["shop_spell3","shop_spell3_price","shop_spell3_$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_spell3_$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_spell3","shop_spell3_$(player)"]}
