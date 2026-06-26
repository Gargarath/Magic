## appelée lorsqu'on veut passer le bouton en mode pas prêt

# passe le bouton en pas prêt
$data merge entity @n[type=item_display,tag=shop_ready_$(player)] {item:{components:{"minecraft:custom_model_data":{strings:["not_ready_button"]}}}}

$data merge entity @n[type=text_display,tag=shop_not_ready_$(player)_1] {text:{"text":"$(tr_shop_not_ready_button_1)","bold":true}}
$data merge entity @n[type=text_display,tag=shop_not_ready_$(player)_2] {text:{"text":"$(tr_shop_not_ready_button_2)","bold":true}}
$data merge entity @n[type=text_display,tag=shop_ready_$(player)] {text:"","bold":true}