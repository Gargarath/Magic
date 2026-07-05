## Appelée en tant que tueur direct, pendant que la victime porte le tag killed.

scoreboard players set $bounty_payout ffa_bounty_calc 0
execute as @a[tag=killed,limit=1,distance=0] run function gamemode:ffa/bounty/prepare_claim with entity @s EnderItems[0].components.minecraft:custom_data

function gamemode:ffa/money_distribution/killed_player
execute if score $bounty_payout ffa_bounty_calc matches 1.. run function gamemode:ffa/bounty/pay_claim with entity @s EnderItems[0].components.minecraft:custom_data

scoreboard players add @s ffa_bounty_streak 1
function gamemode:ffa/bounty/recalculate
