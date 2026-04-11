## appelée au début de game au nom de chaque joueur
# actualise le shop selon ses items et son nom

$data merge entity @n[type=mannequin,tag=statue$(player)] {profile:"$(name)"}

$data merge entity @n[type=item_display,tag=shop_sword$(player)] {item:{id:"minecraft:wooden_sword",count:1}}
$data merge entity @n[type=text_display,tag=shop_sword_level,tag=shop_sword$(player)] {text:"\uE628\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}

$data merge entity @n[type=item_display,tag=shop_chest$(player)] {item:{id:"minecraft:leather_chestplate",count:1}}
$data merge entity @n[type=text_display,tag=shop_chest_level,tag=shop_chest$(player)] {text:"\uE628\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}

$data merge entity @n[type=item_display,tag=shop_legs$(player)] {item:{id:"minecraft:leather_leggings",count:1}}
$data merge entity @n[type=text_display,tag=shop_legs_level,tag=shop_legs$(player)] {text:"\uE628\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}

$data merge entity @n[type=item_display,tag=shop_boots$(player)] {item:{id:"minecraft:leather_boots",count:1}}
$data merge entity @n[type=text_display,tag=shop_boots_level,tag=shop_boots$(player)] {text:"\uE628\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}