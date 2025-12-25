# Appellée par ctf:loop permet d'afficher 2 à l'écran pour faire un chargement de début de partie
#title @a title {"text":"2","color":"yellow"}

execute as @e[tag=start_countdown] run data merge entity @s {text:{"color":"yellow","text":"2"}}
function main:launch_arena/countdown/animation_up
schedule function main:launch_arena/countdown/animation_down 17t
# fait l'animation du numéro

execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0

schedule function main:launch_arena/countdown/timer1 1s
# continu le décompte