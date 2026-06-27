## appelée par sync_all et main:personnal_data/translation/change_language/refresh_language
# permet de préparer les données personnelles de @s puis de mettre à jour sa bossbar individuelle

data modify storage secondary_objective:temp data set value {}
data modify storage secondary_objective:temp data set from entity @s EnderItems[0].components.minecraft:custom_data
execute store result storage secondary_objective:temp data.slot int 1 run scoreboard players get @s secondary_objective_slot
execute if score on point_capture matches 0 store result storage secondary_objective:temp data.value int 1 run bossbar get secondary_objective:state value
execute if score on point_capture matches 0 store result storage secondary_objective:temp data.max int 1 run bossbar get secondary_objective:state max
execute if score on point_capture matches 1 if entity @s[team=red] store result storage secondary_objective:temp data.value int 1 run bossbar get secondary_objective:state_red value
execute if score on point_capture matches 1 if entity @s[team=red] store result storage secondary_objective:temp data.max int 1 run bossbar get secondary_objective:state_red max
execute if score on point_capture matches 1 unless entity @s[team=red] store result storage secondary_objective:temp data.value int 1 run bossbar get secondary_objective:state_blue value
execute if score on point_capture matches 1 unless entity @s[team=red] store result storage secondary_objective:temp data.max int 1 run bossbar get secondary_objective:state_blue max
function gamemode:ctf/secondary_objectives/bossbar/apply_value with storage secondary_objective:temp data
execute if score $refresh secondary_objective_slot matches 1 run function gamemode:ctf/secondary_objectives/bossbar/apply with storage secondary_objective:temp data
