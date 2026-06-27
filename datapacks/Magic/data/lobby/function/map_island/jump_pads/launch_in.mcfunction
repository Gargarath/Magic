## appelée par lobby:slime_pads
# permet de propulser le joueur vers l'ile de des maps
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 100 1


tag @s add in_map_display
execute at @s run tp @s ~ 99.2 ~

function motion:set {x: 7.4, y: 0.75, z: 0}