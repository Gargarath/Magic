## Met à jour l'âge, la phase d'entrée et l'expiration des alertes de @s.

execute if score @s ffa_ph_alert_1 matches 1.. run function main:gui/ffa_money_alert/update_slot_1 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s ffa_ph_alert_2 matches 1.. run function main:gui/ffa_money_alert/update_slot_2 with entity @s EnderItems[0].components.minecraft:custom_data
execute if score @s ffa_ph_alert_3 matches 1.. run function main:gui/ffa_money_alert/update_slot_3 with entity @s EnderItems[0].components.minecraft:custom_data

scoreboard players remove @s[scores={ffa_ph_alert_1=1..}] ffa_ph_alert_1 1
scoreboard players remove @s[scores={ffa_ph_alert_2=1..}] ffa_ph_alert_2 1
scoreboard players remove @s[scores={ffa_ph_alert_3=1..}] ffa_ph_alert_3 1

$execute if score @s ffa_ph_alert_1 matches 0 run data remove storage minecraft:gui player.$(player).money_alert.slot1
$execute if score @s ffa_ph_alert_2 matches 0 run data remove storage minecraft:gui player.$(player).money_alert.slot2
$execute if score @s ffa_ph_alert_3 matches 0 run data remove storage minecraft:gui player.$(player).money_alert.slot3
