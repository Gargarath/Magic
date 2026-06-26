## appelée par lobby:slime_pads
# permet de propulser le joueur vers l'ile de stats
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 100 1

tag @s add in_podium
execute at @s run tp @s ~ 99.2 ~
function motion:set {x: 0, y: 0.75, z: 6.4}