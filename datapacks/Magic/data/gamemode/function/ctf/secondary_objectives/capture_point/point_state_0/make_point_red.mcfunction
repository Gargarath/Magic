# appelée par ctf:secondary_objectives/capture_point/pirate_map/point_state_0/red_cap -> permet au point de devenir rouge et avertit les autres joueurs qu'il l'est devenu
bossbar set minecraft:secondary_objective_blue color red
bossbar set minecraft:secondary_objective_red color red
scoreboard players set state point_capture 2
# passe au state 2 (= les rouges contrôlent le point)

tellraw @a {"text":"L'équipe rouge contrôle l'objectif secondaire !","color":"red"}
execute as @a[team=blue] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 100 0
execute as @a[team=red] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 100 2
execute as @a[team=spectator] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 100 2
# indique aux équipes que l'équipe rouge contrôle l'objectif secondaire



scoreboard players set max_red point_capture 600
scoreboard players operation max_red point_capture *= red playercount
execute if score max_red point_capture matches 3601.. run scoreboard players set max_red point_capture 3600
#si le score dépasse 3600 ticks -> le fixe à 3600

bossbar set minecraft:point_capture_blue players
bossbar set minecraft:point_capture_red players
# reset les bossbar de capture du point

execute store result bossbar minecraft:secondary_objective_red max run scoreboard players get max_red point_capture
execute store result bossbar minecraft:secondary_objective_blue max run scoreboard players get max_red point_capture


# UPDATE LE GRAS DES BOSSBAR

data modify storage minecraft:point_capture blue_score1 set value {"text":"(","bold":false,"color":"gray"}
data modify storage minecraft:point_capture blue_score2 set value {"score":{"name":"percentage_blue","objective":"point_capture"},"bold":false,"color":"blue"}
data modify storage minecraft:point_capture blue_score3 set value {"text":"%","bold":false,"color":"blue"}
data modify storage minecraft:point_capture blue_score4 set value {"text":")","bold":false,"color":"gray"}

data modify storage minecraft:point_capture red_score1 set value {"text":"(","bold":true,"color":"gray"}
data modify storage minecraft:point_capture red_score2 set value {"score":{"name":"percentage_red","objective":"point_capture"},"bold":true,"color":"red"}
data modify storage minecraft:point_capture red_score3 set value {"text":"%","bold":true,"color":"red"}
data modify storage minecraft:point_capture red_score4 set value {"text":")","bold":true,"color":"gray"}