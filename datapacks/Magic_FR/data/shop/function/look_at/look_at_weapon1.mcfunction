## appelée par shop:loop quand @s regarde l'interaction
# permet de faire grossir ce qu'il regarde

tag @s add look_at_weapon1
data merge entity @n[type=item_display,tag=shop_weapon1] {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.15f],scale:[1.0f,1.0f,1.0f]}}
data merge entity @n[type=text_display,tag=shop_weapon1_level] {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0.15f],scale:[0.6f,0.6f,0.6f]}}
data merge entity @n[type=text_display,tag=shop_weapon1_price] {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.2f,-0.1f,0.15f],scale:[1.0f,1.0f,1.0f]}}

execute at @n[type=item_display,tag=shop_weapon1] run summon text_display ~-2.1 ~-0.5 ~-0.3 {see_through:0b,shadow:1b,alignment:"left",background:-14869215,billboard:"fixed",Tags:["shop_overlay"],Rotation:[180F,0F],start_interpolation:0,interpolation_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},text:["                                                  "]}
# invoque l'overlay

function shop:refresh/items/weapon1 with entity @s EnderItems[0].components.minecraft:custom_data
# stock dans un le storage de @s l'info de sa prochaine arme

function shop:look_at/display_infos/display_infos with entity @s EnderItems[0].components.minecraft:custom_data
# modifie l'overlay en fonction des infos de @s