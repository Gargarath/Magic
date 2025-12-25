# Appellée par ctf:loop permet d'afficher 3 à l'écran pour faire un chargement de début de partie

scoreboard players reset $enable_game_countdown timers


schedule function main:launch_arena/countdown/animation_up 1t
schedule function main:launch_arena/countdown/animation_down 17t
# fait l'animation du numéro

#title @a title {"text":"3","color":"dark_green"}
execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0

schedule function main:launch_arena/countdown/timer2 1s
# continu le décompte