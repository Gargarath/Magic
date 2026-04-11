## appelée par shop:loop quand @s regarde ailleurs que l'interaction
# permet de faire retrecir ce qu'il ne regarde plus

tag @s remove look_at_spell1
execute as @n[type=item_display,tag=shop_spell1] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]}}
execute as @n[type=text_display,tag=shop_spell1_level] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}}
data merge entity @n[type=text_display,tag=shop_spell1_price] {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}