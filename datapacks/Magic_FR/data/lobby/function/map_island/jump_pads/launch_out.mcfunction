## appelée par lobby:slime_pads
# permet de propulser le joueur vers l'ile de centrale
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 100 1

function lobby:map_island/quit_maps
execute at @s run tp @s ~ 99.2 ~

function motion:set {x: -8.03, y: 0.9, z: 0}