## appelée au début de game au nom de chaque joueur
# actualise le shop selon ses items et son nom

#data merge storage stuff 

$data merge entity @n[type=mannequin,tag=statue_$(player))] {profile:"$(name)"}

$data merge entity @n[type=item_display,tag=shop_weapon1_$(player))] {item:{id:"minecraft:wooden_sword",count:1}}
$data merge entity @n[type=text_display,tag=shop_weapon1_level,tag=shop_weapon1_$(player))] {text:"\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}

$data merge entity @n[type=item_display,tag=shop_chest_$(player))] {item:{id:"minecraft:leather_chestplate",count:1}}
$data merge entity @n[type=text_display,tag=shop_chest_level,tag=shop_chest_$(player))] {text:"\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}

$data merge entity @n[type=item_display,tag=shop_legs_$(player))] {item:{id:"minecraft:leather_leggings",count:1}}
$data merge entity @n[type=text_display,tag=shop_legs_level,tag=shop_legs_$(player))] {text:"\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}

$data merge entity @n[type=item_display,tag=shop_boots_$(player))] {item:{id:"minecraft:leather_boots",count:1}}
$data merge entity @n[type=text_display,tag=shop_boots_level,tag=shop_boots_$(player))] {text:"\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE627\uE761\uE630"}
