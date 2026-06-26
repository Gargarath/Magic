## appelée lorsqu'on veut passer le bouton en mode prêt

# passe le bouton en prêt
$data merge entity @n[type=item_display,tag=shop_ready_$(player)] {item:{components:{"minecraft:custom_model_data":{strings:["ready_button"]}}}}

$data merge entity @n[type=text_display,tag=shop_not_ready_$(player)_1] {text:"","bold":true}
$data merge entity @n[type=text_display,tag=shop_not_ready_$(player)_2] {text:"","bold":true}
$data merge entity @n[type=text_display,tag=shop_ready_$(player)] {"text":{"text":"$(tr_shop_ready_button)","bold":true}}