## appelée par les boucles de capture Pirate, Factory et Volcano pour un joueur bleu présent sur le point
# permet de copier la progression bleue et les traductions de @s avant d'afficher sa bossbar

data modify storage point_capture:temp data set value {}
data modify storage point_capture:temp data set from entity @s EnderItems[0].components.minecraft:custom_data
execute store result storage point_capture:temp data.slot int 1 run scoreboard players get @s secondary_objective_slot
execute store result storage point_capture:temp data.value int 1 run bossbar get point_capture:state_blue value
execute store result storage point_capture:temp data.max int 1 run bossbar get point_capture:state_blue max
function gamemode:ctf/secondary_objectives/capture_point/bossbar/apply_blue with storage point_capture:temp data
