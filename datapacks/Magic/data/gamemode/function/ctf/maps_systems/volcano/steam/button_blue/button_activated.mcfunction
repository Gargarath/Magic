# appelée par ctf:loop si le bouton du côté bleu à été activé
# permet d'activer le système de vapeur bleu


setblock -598 162 522 air
# enlève le bouton

scoreboard players set blue steam_timer 16
function gamemode:ctf/maps_systems/volcano/steam/button_blue/steam_system
# lance le timer de vapeur

summon text_display -598 162.9 522.2 {background:-263237809,NoGravity:1b,billboard:"center",Tags:["steam_button","steam_button_blue"],text:{"text":"15","bold":true}}
# invoque un text_display qui indique combien de temps il reste

execute as @a[x=-598,y=162,z=522,distance=..10] run playsound minecraft:block.fire.extinguish master @s -597.5 162 521.5 100 2
particle minecraft:cloud -597.5 164.5 521.5 0 0 0 0 1 force
particle minecraft:cloud -597.5 164 521.5 0 0 0 0 1 force
particle minecraft:cloud -597.5 163.5 521.5 0 0 0 0 1 force
# fait un bruit et un effet de particule au niveau du bouton
