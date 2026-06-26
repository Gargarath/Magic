# Appellée par ctf:loop permet d'afficher 1 à l'écran pour faire un chargement de début de partie
#title @a title {"text":"1","color":"dark_red"}

execute as @e[tag=start_countdown] run data merge entity @s {text:{"color":"dark_red","text":"1"}}
function main:launch_arena/countdown/animation_up
# fait l'animation du numéro

execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0


schedule function main:launch_arena/countdown/timer_end 1s
# fini le décompte