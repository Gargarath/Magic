## appelée par shop_is_ready si le timer est infini
# permet d'afficher un timer infini

data modify storage minecraft:matchinfo time.minutes set value "\uE706"
data modify storage minecraft:matchinfo time.colon set value {"text":"∞","color":"gold"}
data modify storage minecraft:matchinfo time.seconds.1 set value "\uE703"
data modify storage minecraft:matchinfo time.seconds.2 set value "\uE703"
# affiche un temps infini