# appelée par ctf:secondary_objectives/launch_secondary_objective/launch_secondary_objective permet de lancer l'objectif secondaire de la map ruine

bossbar set minecraft:secondary_objective name {"text":"Liche","color":"gray","bold":true}
bossbar set minecraft:secondary_objective color red
# affiche la bossbar Liche

summon minecraft:lightning_bolt 218 169 -281
function gamemode:ctf/secondary_objectives/bossfight/graveyard_map/summon_lich/summon_lich
# invoque un éclair puis la liche

tellraw @a {"text":"Une liche est apparue dans l'église !\nTuez la pour obtenir une récompense !","color":"red","bold":false}
execute as @a positioned 218 169 -281 run playsound minecraft:entity.witch.celebrate master @s ~ ~ ~ 100 1
# indique à tous que la liche à été invoquée
scoreboard players set is_over secnd_objective 0
scoreboard players set on lich 1
# permet de refresh à chaque tick le système bossfight
