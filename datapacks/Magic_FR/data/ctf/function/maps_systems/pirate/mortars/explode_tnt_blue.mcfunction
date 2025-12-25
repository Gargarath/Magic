# appelée par ctf:maps_systems/pirate/loop lorque la tnt bleue est sur le pont, permet alors de la faire exploser

execute at @s run effect give @a[distance=..5] minecraft:instant_damage 1 1 true
execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 100 1
execute at @s run playsound minecraft:entity.generic.explode master @a[distance=31..80] ~ ~ ~ 100 0
execute at @s run particle minecraft:explosion ~ ~ ~ 2 1 2 0 10 force
clone 261 53 495 249 44 484 249 85 484
# met le pont rouge en mode détruit
clone 232 44 484 244 53 495 249 16 484
# change les blocs violets (utilisés pour le tp du mage) sous la map pour qu'ils soient adapté au nouveau pont
kill @e[tag=blue_tnt]