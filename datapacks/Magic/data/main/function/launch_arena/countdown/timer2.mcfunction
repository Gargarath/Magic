# Appellée par ctf:loop permet d'afficher 2 à l'écran pour faire un chargement de début de partie

title @a times 4 13 3
title @a title [{"text":"\uE780"},{"text":"2","color":"#FEFD01"},{"text":"\uE781"}]
# La couleur technique est convertie en jaune et animée par text.vsh.

execute as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 100 0

schedule function main:launch_arena/countdown/timer1 1s
# continu le décompte
