## appelée par main:kilfeed/_entity_killed_player quand @s tue un joueur en FFA
# permet de lui donner de l'argent

scoreboard players operation @s PH += $ph_per_kills option_panel
scoreboard players operation @s stat_total_money_earned += $ph_per_kills option_panel
execute if score $ph_per_kills option_panel matches 1.. run function main:gui/ffa_money_alert/show_kill with entity @s EnderItems[0].components.minecraft:custom_data

execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 1
