## appelée lorsqu'on veut passer le bouton en mode ffa

# passe le bouton en ffa
$data merge entity @n[type=item_display,tag=shop_ready_$(player)] {item:{components:{"minecraft:custom_model_data":{strings:["play_button"]}}}}

$data merge entity @n[type=text_display,tag=shop_not_ready_$(player)_1] {text:""}
$data merge entity @n[type=text_display,tag=shop_not_ready_$(player)_2] {text:""}
$data merge entity @n[type=text_display,tag=shop_ready_$(player)] {text:{"text":"$(tr_shop_play_button)","bold":true}}