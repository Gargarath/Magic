## Appelée en tant que tueur retrouvé via last_caster.

scoreboard players add @s stat_killcount_player 1
function gamemode:ffa/money_distribution/killed_player
execute if score $bounty_payout ffa_bounty_calc matches 1.. run function gamemode:ffa/bounty/pay_claim with entity @s EnderItems[0].components.minecraft:custom_data

scoreboard players add @s ffa_bounty_streak 1
function gamemode:ffa/bounty/recalculate
