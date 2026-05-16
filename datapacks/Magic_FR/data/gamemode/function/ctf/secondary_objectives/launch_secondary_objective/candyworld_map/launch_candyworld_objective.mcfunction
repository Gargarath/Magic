# appelée par ctf:secondary_objectives/launch_secondary_objective/launch_secondary_objective permet de lancer l'objectif secondaire de la map bonbon

bossbar set minecraft:secondary_objective name {"text":"Cerise vivante !","color":"light_purple","bold":true}
bossbar set minecraft:secondary_objective color pink
# affiche la bossbar bonbon

fill -18 164 -740 -20 168 -738 air
function gamemode:ctf/secondary_objectives/bossfight/candyworld_map/summon_cherry/summon_cherry
# enlève la cerise puis invoque puis le mob cerise
fill -20 254 -740 -18 257 -738 air
fill -20 253 -740 -18 253 -738 minecraft:barrier
# setup le nouveau tp pour le mage (sans la cerise au milieu)

scoreboard players set obj_complete living_cherry 0
scoreboard players set no_more_slime living_cherry 0
scoreboard players set invulnerable living_cherry 1
scoreboard players set is_dead living_cherry 0
scoreboard players set is_over secnd_objective 0
# met le score is_dead de la cerise vivante à 0 (si il n'y a plus de cerise vivante et que ce score est à 0 -> lance le système de drop de l'objet du cerise vivante)

execute as @a run function gamemode:ctf/secondary_objectives/launch_secondary_objective/candyworld_map/objective_launch_text with entity @s EnderItems[0].components.minecraft:custom_data

execute as @a positioned -19 164 -739 run playsound minecraft:entity.slime.squish_small master @s ~ ~ ~ 100 1
# indique à tous que la cerise à été invoquée
scoreboard players set on living_cherry 1
# permet de refresh à chaque tick le système bossfight
