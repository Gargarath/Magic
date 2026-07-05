## Macro appelée en tant que tueur avec {player:<numéro>}.

scoreboard players operation @s PH += $bounty_payout ffa_bounty_calc
scoreboard players operation @s stat_total_money_earned += $bounty_payout ffa_bounty_calc
scoreboard players operation @s stat_total_bounty_earned += $bounty_payout ffa_bounty_calc

$data modify storage gamemode:ffa_bounty killer_name set from storage main:killfeed name.$(player)
execute store result storage gamemode:ffa_bounty amount int 1 run scoreboard players get $bounty_payout ffa_bounty_calc

function main:gui/ffa_money_alert/show_bounty with entity @s EnderItems[0].components.minecraft:custom_data
execute as @a run function gamemode:ffa/bounty/announce_claim with entity @s EnderItems[0].components.minecraft:custom_data
