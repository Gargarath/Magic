## Appelée après un gain de PH obtenu par une élimination en FFA.

execute store result storage main:ffa_money_alert player int 1 run scoreboard players get @s Player
execute store result storage main:ffa_money_alert amount int 1 run scoreboard players get $ph_per_kills option_panel
$data modify storage main:ffa_money_alert reason set value {"text":"$(tr_ffa_money_alert_kill)","color":"gray"}
function main:gui/ffa_money_alert/push with storage main:ffa_money_alert
