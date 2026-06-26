## appelée par lobby:slime_pads
# permet de propulser le joueur vers l'ile de centrale
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 100 1

function lobby:jump/quit_jump
execute at @s run tp @s ~ 99.2 ~
function motion:set {x: 9, y: 1, z: 0}