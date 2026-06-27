# appelée par ctf:secondary_objectives/capture_point/pirate_map/point_state_0/blue_cap -> permet au point de devenir bleu et avertit les autres joueurs qu'il l'est devenu
bossbar set secondary_objective:state_blue color blue
bossbar set secondary_objective:state_red color blue
scoreboard players set state point_capture 1
# passe au state 1 (= les bleus contrôlent le point)

execute as @a run function gamemode:ctf/secondary_objectives/messages/blue_controls with entity @s EnderItems[0].components.minecraft:custom_data

execute as @a[team=red] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 100 0
execute as @a[team=blue] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 100 2
execute as @a[team=spectator] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 100 2
# indique aux équipes que l'équipe bleue contrôle l'objectif secondaire


scoreboard players set max_blue point_capture 600
scoreboard players operation max_blue point_capture *= blue playercount
execute if score max_blue point_capture matches 3601.. run scoreboard players set max_blue point_capture 3600
#si le score dépasse 3600 ticks -> le fixe à 3600

bossbar set point_capture:state_blue players
bossbar set point_capture:state_red players
# reset les bossbar de capture du point

execute store result bossbar secondary_objective:state_blue max run scoreboard players get max_blue point_capture
execute store result bossbar secondary_objective:state_red max run scoreboard players get max_blue point_capture

# UPDATE LE GRAS DES BOSSBAR
data modify storage minecraft:point_capture blue_score1 set value {"text":"(","bold":true,"color":"gray"}
data modify storage minecraft:point_capture blue_score2 set value {"score":{"name":"percentage_blue","objective":"point_capture"},"bold":true,"color":"blue"}
data modify storage minecraft:point_capture blue_score3 set value {"text":"%","bold":true,"color":"blue"}
data modify storage minecraft:point_capture blue_score4 set value {"text":")","bold":true,"color":"gray"}

data modify storage minecraft:point_capture red_score1 set value {"text":"(","bold":false,"color":"gray"}
data modify storage minecraft:point_capture red_score2 set value {"score":{"name":"percentage_red","objective":"point_capture"},"bold":false,"color":"red"}
data modify storage minecraft:point_capture red_score3 set value {"text":"%","bold":false,"color":"red"}
data modify storage minecraft:point_capture red_score4 set value {"text":")","bold":false,"color":"gray"}
