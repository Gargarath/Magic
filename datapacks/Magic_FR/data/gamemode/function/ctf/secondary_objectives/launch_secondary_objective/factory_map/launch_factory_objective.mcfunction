# appelée par ctf:secondary_objectives/launch_secondary_objective/launch_secondary_objective permet de lancer l'objectif secondaire de la map usine

# RESET LE BOLD DES POINTS DE CAPTURE
data modify storage minecraft:point_capture blue_score1 set value {"text":"(","bold":false,"color":"gray"}
data modify storage minecraft:point_capture blue_score2 set value {"score":{"name":"percentage_blue","objective":"point_capture"},"bold":false,"color":"blue"}
data modify storage minecraft:point_capture blue_score3 set value {"text":"%","bold":false,"color":"blue"}
data modify storage minecraft:point_capture blue_score4 set value {"text":")","bold":false,"color":"gray"}
data modify storage minecraft:point_capture red_score1 set value {"text":"(","bold":false,"color":"gray"}
data modify storage minecraft:point_capture red_score2 set value {"score":{"name":"percentage_red","objective":"point_capture"},"bold":false,"color":"red"}
data modify storage minecraft:point_capture red_score3 set value {"text":"%","bold":false,"color":"red"}
data modify storage minecraft:point_capture red_score4 set value {"text":")","bold":false,"color":"gray"}

bossbar set minecraft:secondary_objective_blue players
bossbar set minecraft:secondary_objective_red players
data modify storage minecraft:point_capture name set value {"text":"Générateur de l\'usine","bold":true,"color":"dark_red"}
bossbar set minecraft:secondary_objective_blue name ["",{"nbt":"blue_score1","storage":"point_capture","interpret":true},{"nbt":"blue_score2","storage":"point_capture","interpret":true},{"nbt":"blue_score3","storage":"point_capture","interpret":true},{"nbt":"blue_score4","storage":"point_capture","interpret":true},{"text":" - ","bold":true,"color":"gray"},{"nbt":"name","storage":"point_capture","interpret":true},{"text":" - ","bold":true,"color":"gray"},{"nbt":"red_score1","storage":"point_capture","interpret":true},{"nbt":"red_score2","storage":"point_capture","interpret":true},{"nbt":"red_score3","storage":"point_capture","interpret":true},{"nbt":"red_score4","storage":"point_capture","interpret":true}]
bossbar set minecraft:secondary_objective_red name ["",{"nbt":"red_score1","storage":"point_capture","interpret":true},{"nbt":"red_score2","storage":"point_capture","interpret":true},{"nbt":"red_score3","storage":"point_capture","interpret":true},{"nbt":"red_score4","storage":"point_capture","interpret":true},{"text":" - ","bold":true,"color":"gray"},{"nbt":"name","storage":"point_capture","interpret":true},{"text":" - ","bold":true,"color":"gray"},{"nbt":"blue_score1","storage":"point_capture","interpret":true},{"nbt":"blue_score2","storage":"point_capture","interpret":true},{"nbt":"blue_score3","storage":"point_capture","interpret":true},{"nbt":"blue_score4","storage":"point_capture","interpret":true}]
bossbar set minecraft:secondary_objective_blue value 0
bossbar set minecraft:secondary_objective_red value 0
bossbar set minecraft:secondary_objective_blue players @a[team=!red]
bossbar set minecraft:secondary_objective_red players @a[team=red]
bossbar set minecraft:secondary_objective players
# affiche la barre Générateur de l'usine

scoreboard players set state point_capture 0
scoreboard players set red point_capture 0
scoreboard players set blue point_capture 0
bossbar set minecraft:point_capture_blue value 0
bossbar set minecraft:point_capture_red value 0
scoreboard players set is_over secnd_objective 0
# reset l'objectif sur le state 0


# TEMPS DE CAPTURE BLEU
scoreboard players set max_capture_blue point_capture 75
scoreboard players operation max_capture_blue point_capture *= blue playercount
execute if score max_capture_blue point_capture matches 0 run scoreboard players set max_capture_blue point_capture 75
execute if score max_capture_blue point_capture matches 451.. run scoreboard players set max_capture_blue point_capture 450
# mets le temps de capture du point de l'équipe bleu à 75 * nombre de joueurs dans l'équipe bleue (maximum 450 ticks)
execute store result bossbar minecraft:point_capture_blue max run scoreboard players get max_capture_blue point_capture
# fixe le max de la bossbar capture_blue selon le temps de capture fixé pour les bleus

# TEMPS DE CAPTURE ROUGE
scoreboard players set max_capture_red point_capture 75
scoreboard players operation max_capture_red point_capture *= red playercount
execute if score max_capture_red point_capture matches 0 run scoreboard players set max_capture_red point_capture 75
execute if score max_capture_red point_capture matches 451.. run scoreboard players set max_capture_red point_capture 450
# mets le temps de capture du point de l'équipe rouge à 75 * nombre de joueurs dans l'équipe rouge (maximum 450 ticks)
execute store result bossbar minecraft:point_capture_red max run scoreboard players get max_capture_red point_capture
# fixe le max de la bossbar capture_red selon le temps de capture fixé pour les rouges

clone 326 137 13 316 142 3 316 146 3
# eteint le generateur de l'objectif secondaire

tellraw @a {"text":"Le générateur de l'usine s'est éteint ! Rallumez le pour obtenir une récompense !","color":"gold","bold":false}
execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s 268 94 498 100 0
# indique à tous que l'objectif secondaire est disponible !

execute positioned 321 148 8 as @a[distance=..30] at @s run playsound minecraft:entity.generic.extinguish_fire master @s 332 41 8 50 1
execute positioned 321 149 6 run particle minecraft:crit ~ ~ ~ 0.3 0.5 0.3 1 10 force
execute positioned 319 149 8 run particle minecraft:crit ~ ~ ~ 0.3 0.5 0.3 1 10 force
execute positioned 321 149 10 run particle minecraft:crit ~ ~ ~ 0.3 0.5 0.3 1 10 force
execute positioned 323 149 8 run particle minecraft:crit ~ ~ ~ 0.3 0.5 0.3 1 10 force
effect give @a[x=316.5,y=148,z=3.5,dx=9.1,dy=4,dz=9.1,scores={Player=1..}] minecraft:instant_damage 1 3 true
# simule un court circuit au niveau du generateur

summon armor_stand 321 146 8 {Tags:["objective_center"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
# invoque un armor_stand au centre de l'objectif secondaire
execute at @e[tag=objective_center] run summon armor_stand ~-4 ~ ~-4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-3 ~ ~-4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-2 ~ ~-4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-1 ~ ~-4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~ ~ ~-4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~1 ~ ~-4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~2 ~ ~-4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~3 ~ ~-4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~4 ~ ~-4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~4 ~ ~-3 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~4 ~ ~-2 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~4 ~ ~-1 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~4 ~ ~ {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~4 ~ ~1 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~4 ~ ~2 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~4 ~ ~-3 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~4 ~ ~4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~3 ~ ~4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~2 ~ ~4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~1 ~ ~4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~ ~ ~4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-1 ~ ~4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-2 ~ ~4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-3 ~ ~4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-4 ~ ~4 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-4 ~ ~-3 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-4 ~ ~-2 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-4 ~ ~-1 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-4 ~ ~ {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-4 ~ ~1 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-4 ~ ~2 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-4 ~ ~3 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1,NoBasePlate:1b,DisabledSlots:4144959}
# invoque les armor_stand qui délimitent l'objectif secondaire


scoreboard players set on point_capture 1
# permet de refresh à chaque tick le système capture de point
