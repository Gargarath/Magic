# Appellée par ctf:loop permet d'afficher 1 à l'écran pour faire un chargement de début de partie

title @a times 4 13 3
title @a title {"text":"1","color":"#FD0102"}
# La couleur technique est convertie en rouge sombre et animée par text.vsh.

execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0


schedule function main:launch_arena/countdown/timer_end 1s
# fini le décompte
