## appelée par summon_shop pour les 12 players
# permet de setup les entités des shops

$kill @e[type=mannequin,tag=statue$(player)]
$kill @e[tag=shop_sword$(player)]
$kill @e[tag=shop_chest$(player)]
$kill @e[tag=shop_legs$(player)]
$kill @e[tag=shop_boots$(player)]
$kill @e[tag=shop_spell1$(player)]
$kill @e[tag=shop_spell2$(player)]
$kill @e[tag=shop_spell3$(player)]

# mannequin
$execute at @e[type=marker,tag=shop_room$(player)] run summon mannequin ~ ~0.5 ~4.45 {NoGravity:1b,Silent:1b,Invulnerable:1b,immovable:true,Rotation:[180F,0F],Tags:["statue$(player)"],profile:"",hidden_layers:["cape"],attributes:[{id:"minecraft:scale",base:1.2}]}

# weapon1
$execute at @e[type=marker,tag=shop_room$(player)] run summon item_display ~2 ~2.5 ~4.4 {item_display:"gui",Tags:["shop_sword","shop_sword$(player)"],item:{id:"minecraft:diamond_sword",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_sword$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_sword","shop_sword_level","shop_sword$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}
$execute at @e[type=item_display,tag=shop_sword$(player)] run summon text_display ~-0.25 ~-0.4 ~ {billboard:"fixed",Tags:["shop_sword","shop_sword_price","shop_sword$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_sword$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_sword","shop_sword$(player)"]}

# chest
$execute at @e[type=marker,tag=shop_room$(player)] run summon item_display ~1 ~2.5 ~4.4 {item_display:"gui",Tags:["shop_chest","shop_chest$(player)"],item:{id:"minecraft:diamond_chestplate",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_chest$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_chest","shop_chest_level","shop_chest$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}
$execute at @e[type=item_display,tag=shop_chest$(player)] run summon text_display ~-0.25 ~-0.4 ~ {billboard:"fixed",Tags:["shop_chest","shop_chest_price","shop_chest$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_chest$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_chest","shop_chest$(player)"]}

# legs
$execute at @e[type=marker,tag=shop_room$(player)] run summon item_display ~1 ~1.6 ~4.4 {item_display:"gui",Tags:["shop_legs","shop_legs$(player)"],item:{id:"minecraft:diamond_leggings",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_legs$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_legs","shop_legs_level","shop_legs$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}
$execute at @e[type=item_display,tag=shop_legs$(player)] run summon text_display ~-0.25 ~-0.4 ~ {billboard:"fixed",Tags:["shop_legs","shop_legs_price","shop_legs$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_legs$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_legs","shop_legs$(player)"]}

# boots
$execute at @e[type=marker,tag=shop_room$(player)] run summon item_display ~1 ~0.7 ~4.4 {item_display:"gui",Tags:["shop_boots","shop_boots$(player)"],item:{id:"minecraft:diamond_boots",count:1},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_boots$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_boots","shop_boots_level","shop_boots$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}
$execute at @e[type=item_display,tag=shop_boots$(player)] run summon text_display ~-0.25 ~-0.4 ~ {billboard:"fixed",Tags:["shop_boots","shop_boots_price","shop_boots$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_boots$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_boots","shop_boots$(player)"]}

# spell1
$execute at @e[type=marker,tag=shop_room$(player)] run summon item_display ~-1 ~2.5 ~4.4 {item_display:"gui",Tags:["shop_spell1","shop_spell1$(player)"],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":{strings:["a"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_spell1$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_spell1","shop_spell1_level","shop_spell1$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE627\uE761\uE627\uE761\uE630"}
$execute at @e[type=item_display,tag=shop_spell1$(player)] run summon text_display ~-0.25 ~-0.4 ~ {billboard:"fixed",Tags:["shop_spell1","shop_spell1_price","shop_spell1$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_spell1$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_spell1","shop_spell1$(player)"]}

# spell2
$execute at @e[type=marker,tag=shop_room$(player)] run summon item_display ~-1 ~1.6 ~4.4 {item_display:"gui",Tags:["shop_spell2","shop_spell2$(player)"],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":{strings:["a"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_spell2$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_spell2","shop_spell2_level","shop_spell2$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE627\uE761\uE627\uE761\uE630"}
$execute at @e[type=item_display,tag=shop_spell2$(player)] run summon text_display ~-0.25 ~-0.4 ~ {billboard:"fixed",Tags:["shop_spell2","shop_spell2_price","shop_spell2$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_spell2$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_spell2","shop_spell2$(player)"]}

# spell3
$execute at @e[type=marker,tag=shop_room$(player)] run summon item_display ~-1 ~0.7 ~4.4 {item_display:"gui",Tags:["shop_spell3","shop_spell3$(player)"],item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":{strings:["a"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
$execute at @e[type=item_display,tag=shop_spell3$(player)] run summon text_display ~ ~-0.5 ~ {billboard:"fixed",Tags:["shop_spell3","shop_spell3_level","shop_spell3$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]},text:"\uE630"}
$execute at @e[type=item_display,tag=shop_spell3$(player)] run summon text_display ~-0.25 ~-0.4 ~ {billboard:"fixed",Tags:["shop_spell3","shop_spell3_price","shop_spell3$(player)"],Rotation:[180F,0F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{"color":"green","text":"0"}}
$execute at @e[type=item_display,tag=shop_spell3$(player)] run summon interaction ~ ~-0.4 ~ {width:0.7f,height:0.7f,Tags:["shop_spell3","shop_spell3$(player)"]}
