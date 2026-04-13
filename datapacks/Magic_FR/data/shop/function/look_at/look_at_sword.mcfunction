## appelée par shop:loop quand @s regarde l'interaction
# permet de faire grossir ce qu'il regarde

tag @s add look_at_sword
data merge entity @n[type=item_display,tag=shop_weapon1] {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.15f],scale:[1.0f,1.0f,1.0f]}}
data merge entity @n[type=text_display,tag=shop_weapon1_level] {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.2f,0.15f],scale:[0.6f,0.6f,0.6f]}}
data merge entity @n[type=text_display,tag=shop_weapon1_price] {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.2f,-0.1f,0.15f],scale:[1.0f,1.0f,1.0f]}}