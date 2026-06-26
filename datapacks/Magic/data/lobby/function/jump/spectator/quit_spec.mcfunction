## appelée par XXX quand @s fait la commande pour quitter les specs du jump
# enlève @s des specs du jump et le ramène sur l'île

scoreboard players reset @s quit
function lobby:jump/spectator/leave_spec
tp @s -80.5 99 0.5 90 0
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 100 1

function main:gui/display/refresh_gui
# actualise le gui de tous (car besoin de l'interface spec pour @s)