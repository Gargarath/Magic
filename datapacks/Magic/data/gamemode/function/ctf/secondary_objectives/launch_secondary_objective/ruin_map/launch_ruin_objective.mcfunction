scoreboard players set $type secondary_objective_slot 5
# appelée par ctf:secondary_objectives/launch_secondary_objective/launch_secondary_objective permet de lancer l'objectif secondaire de la map ruine

bossbar set secondary_objective:state name {"text":"Le Gardien","color":"green","bold":true}
bossbar set secondary_objective:state color green
# affiche la bossbar Golem

function gamemode:ctf/secondary_objectives/bossfight/ruin_map/summon_golem/summon_golem
# invoque le golem

execute as @a run function gamemode:ctf/secondary_objectives/launch_secondary_objective/ruin_map/objective_launch_text with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a positioned -518.5 146 -110.5 run playsound minecraft:entity.iron_golem.death master @s ~ ~ ~ 100 1
# indique à tous que le golem à été invoqué
scoreboard players set is_over secnd_objective 0
scoreboard players set on golem 1
# permet de refresh à chaque tick le système ruin bossfight
