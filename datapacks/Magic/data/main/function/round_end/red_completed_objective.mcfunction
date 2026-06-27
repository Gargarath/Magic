# appelée par function main:round_end/go_to_shop si les bleus ont réussie le dernier objectif secondaire
# donne un bonus d'argent aux bleus

scoreboard players reset red_won_last secnd_objective
execute as @a[tag=red_team] run function main:round_end/messages/completed_secondary_objective with entity @s EnderItems[0].components.minecraft:custom_data
scoreboard players operation @a[tag=red_team] PH += $ph_per_obj option_panel
execute if score $build_reset option_panel matches 2 run scoreboard players operation @a[tag=red_team] PH_backup += $ph_per_obj option_panel
