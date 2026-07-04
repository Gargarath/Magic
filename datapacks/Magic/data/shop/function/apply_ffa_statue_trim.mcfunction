## appelee par setup_statue_armor au lancement d'une partie FFA
# change uniquement la matiere afin de conserver le motif de trim de la classe

$data modify entity @n[type=mannequin,tag=statue_$(player)] equipment.chest.components."minecraft:trim".material set value "minecraft:$(material)"
$data modify entity @n[type=mannequin,tag=statue_$(player)] equipment.legs.components."minecraft:trim".material set value "minecraft:$(material)"
$data modify entity @n[type=mannequin,tag=statue_$(player)] equipment.feet.components."minecraft:trim".material set value "minecraft:$(material)"
