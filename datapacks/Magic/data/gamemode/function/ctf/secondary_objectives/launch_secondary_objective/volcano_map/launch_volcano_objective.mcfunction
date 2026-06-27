scoreboard players set $type secondary_objective_slot 4
# appelée par ctf:secondary_objectives/launch_secondary_objective/launch_volcano_objectives permet de lancer l'objectif secondaire de la map volcan

# RESET LE BOLD DES POINTS DE CAPTURE
data modify storage minecraft:point_capture blue_score1 set value {"text":"(","bold":false,"color":"gray"}
data modify storage minecraft:point_capture blue_score2 set value {"score":{"name":"percentage_blue","objective":"point_capture"},"bold":false,"color":"blue"}
data modify storage minecraft:point_capture blue_score3 set value {"text":"%","bold":false,"color":"blue"}
data modify storage minecraft:point_capture blue_score4 set value {"text":")","bold":false,"color":"gray"}
data modify storage minecraft:point_capture red_score1 set value {"text":"(","bold":false,"color":"gray"}
data modify storage minecraft:point_capture red_score2 set value {"score":{"name":"percentage_red","objective":"point_capture"},"bold":false,"color":"red"}
data modify storage minecraft:point_capture red_score3 set value {"text":"%","bold":false,"color":"red"}
data modify storage minecraft:point_capture red_score4 set value {"text":")","bold":false,"color":"gray"}

data modify storage minecraft:point_capture name set value {"text":"Coeur du volcan","bold":true,"color":"dark_red"}
bossbar set secondary_objective:state_blue name ["",{"nbt":"blue_score1","storage":"point_capture","interpret":true},{"nbt":"blue_score2","storage":"point_capture","interpret":true},{"nbt":"blue_score3","storage":"point_capture","interpret":true},{"nbt":"blue_score4","storage":"point_capture","interpret":true},{"text":" - ","bold":true,"color":"gray"},{"nbt":"name","storage":"point_capture","interpret":true},{"text":" - ","bold":true,"color":"gray"},{"nbt":"red_score1","storage":"point_capture","interpret":true},{"nbt":"red_score2","storage":"point_capture","interpret":true},{"nbt":"red_score3","storage":"point_capture","interpret":true},{"nbt":"red_score4","storage":"point_capture","interpret":true}]
bossbar set secondary_objective:state_red name ["",{"nbt":"red_score1","storage":"point_capture","interpret":true},{"nbt":"red_score2","storage":"point_capture","interpret":true},{"nbt":"red_score3","storage":"point_capture","interpret":true},{"nbt":"red_score4","storage":"point_capture","interpret":true},{"text":" - ","bold":true,"color":"gray"},{"nbt":"name","storage":"point_capture","interpret":true},{"text":" - ","bold":true,"color":"gray"},{"nbt":"blue_score1","storage":"point_capture","interpret":true},{"nbt":"blue_score2","storage":"point_capture","interpret":true},{"nbt":"blue_score3","storage":"point_capture","interpret":true},{"nbt":"blue_score4","storage":"point_capture","interpret":true}]
bossbar set secondary_objective:state_blue value 0
bossbar set secondary_objective:state_red value 0
# affiche la barre Coeur du volcan

scoreboard players set state point_capture 0
scoreboard players set red point_capture 0
scoreboard players set blue point_capture 0
bossbar set point_capture:state_blue value 0
bossbar set point_capture:state_red value 0
scoreboard players set is_over secnd_objective 0
# reset l'objectif sur le state 0

# TEMPS DE CAPTURE BLEU
scoreboard players set max_capture_blue point_capture 75
scoreboard players operation max_capture_blue point_capture *= blue playercount
execute if score max_capture_blue point_capture matches 0 run scoreboard players set max_capture_blue point_capture 75
execute if score max_capture_blue point_capture matches 451.. run scoreboard players set max_capture_blue point_capture 450
# mets le temps de capture du point de l'équipe bleu à 75 * nombre de joueurs dans l'équipe bleue (maximum 450 ticks)
execute store result bossbar point_capture:state_blue max run scoreboard players get max_capture_blue point_capture
# fixe le max de la bossbar capture_blue selon le temps de capture fixé pour les bleus

# TEMPS DE CAPTURE ROUGE
scoreboard players set max_capture_red point_capture 75
scoreboard players operation max_capture_red point_capture *= red playercount
execute if score max_capture_red point_capture matches 0 run scoreboard players set max_capture_red point_capture 75
execute if score max_capture_red point_capture matches 451.. run scoreboard players set max_capture_red point_capture 450
# mets le temps de capture du point de l'équipe rouge à 75 * nombre de joueurs dans l'équipe rouge (maximum 450 ticks)
execute store result bossbar point_capture:state_red max run scoreboard players get max_capture_red point_capture
# fixe le max de la bossbar capture_red selon le temps de capture fixé pour les rouges

execute as @a run function gamemode:ctf/secondary_objectives/launch_secondary_objective/volcano_map/objective_launch_text with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a at @s run playsound minecraft:block.beacon.activate master @s 268 94 498 100 0
# indique à tous que le coeur du volcan s'est réveillé !

summon armor_stand -598 138 499 {Tags:["objective_center"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
# invoque un armor_stand au centre de l'objectif secondaire
execute at @e[tag=objective_center] run summon armor_stand ~2 ~ ~3 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~2 ~ ~2 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~2 ~ ~1 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~2 ~ ~ {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~2 ~ ~-1 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~2 ~ ~-2 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~1 ~ ~-2 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~ ~ ~-2 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-1 ~ ~-2 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-2 ~ ~-2 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-2 ~ ~-1 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-2 ~ ~ {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-2 ~ ~1 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-2 ~ ~2 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-2 ~ ~3 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~-1 ~ ~3 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~ ~ ~3 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
execute at @e[tag=objective_center] run summon armor_stand ~1 ~ ~3 {Tags:["objective_border"],NoGravity:1b,Small:1b,Marker:1b,Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,DisabledSlots:4144959}
# invoque les armor_stand qui délimitent l'objectif secondaire


scoreboard players set on point_capture 1
# permet de refresh à chaque tick le système capture de point
