# appelée par ctf:loop si le bouton du côté rouge à été activé
# permet d'activer le système de vapeur rouge


setblock -598 162 477 air
# enlève le bouton

scoreboard players set red steam_timer 16
function gamemode:ctf/maps_systems/volcano/steam/button_red/steam_system
# lance le timer de vapeur

summon text_display -598 162.9 477.8 {background:-263237809,NoGravity:1b,billboard:"center",Tags:["steam_button","steam_button_red"],text:{"text":"15","bold":true}}
# invoque un text_display qui indique combien de temps il reste

execute as @a[x=-598,y=162,z=477,distance=..10] run playsound minecraft:block.fire.extinguish master @s -597.5 162 478.5 100 2
particle minecraft:cloud -597.5 164.5 478.5 0 0 0 0 1 force
particle minecraft:cloud -597.5 164 478.5 0 0 0 0 1 force
particle minecraft:cloud -597.5 163.5 478.5 0 0 0 0 1 force
# fait un bruit et un effet de particule au niveau du bouton