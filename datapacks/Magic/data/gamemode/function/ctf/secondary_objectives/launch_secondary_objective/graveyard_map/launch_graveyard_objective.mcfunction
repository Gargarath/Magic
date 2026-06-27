scoreboard players set $type secondary_objective_slot 2
# appelée par ctf:secondary_objectives/launch_secondary_objective/launch_secondary_objective permet de lancer l'objectif secondaire de la map ruine

bossbar set secondary_objective:state name {"text":"Liche","color":"gray","bold":true}
bossbar set secondary_objective:state color red
# affiche la bossbar Liche

summon minecraft:lightning_bolt 218 169 -281
function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/summon_lich/summon_lich
# invoque un éclair puis la liche

execute as @a run function gamemode:ctf/secondary_objectives/launch_secondary_objective/graveyard_map/objective_launch_text with entity @s EnderItems[0].components.minecraft:custom_data

execute as @a positioned 218 169 -281 run playsound minecraft:entity.witch.celebrate master @s ~ ~ ~ 100 1
# indique à tous que la liche à été invoquée
scoreboard players set is_over secnd_objective 0
scoreboard players set on lich 1
# permet de refresh à chaque tick le système bossfight
