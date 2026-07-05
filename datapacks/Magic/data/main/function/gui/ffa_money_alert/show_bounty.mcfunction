## Appelée après avoir réclamé une prime FFA.

execute store result storage main:ffa_money_alert player int 1 run scoreboard players get @s Player
execute store result storage main:ffa_money_alert amount int 1 run scoreboard players get $bounty_payout ffa_bounty_calc
$data modify storage main:ffa_money_alert reason set value {"text":"$(tr_ffa_money_alert_bounty)","color":"gold"}
function main:gui/ffa_money_alert/push with storage main:ffa_money_alert
