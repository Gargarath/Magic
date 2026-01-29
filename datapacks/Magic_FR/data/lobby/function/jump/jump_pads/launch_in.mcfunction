## appelée par lobby:slime_pads
# permet de propulser le joueur vers l'ile de jump
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 100 1

tag @s add in_jump
execute at @s run tp @s ~ 99.2 ~
function motion:set {x: -7.6, y: 0.8, z: 0}