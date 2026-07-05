## Recalcule la moyenne et tente d'augmenter la prime de chaque joueur actif.

scoreboard players set $kill_sum ffa_bounty_calc 0
scoreboard players set $player_count ffa_bounty_calc 0
execute as @a[scores={Player=1..12}] run scoreboard players operation $kill_sum ffa_bounty_calc += @s stat_killcount_player
execute as @a[scores={Player=1..12}] run scoreboard players add $player_count ffa_bounty_calc 1

scoreboard players operation $kill_average ffa_bounty_calc = $kill_sum ffa_bounty_calc
execute if score $player_count ffa_bounty_calc matches 1.. run scoreboard players operation $kill_average ffa_bounty_calc /= $player_count ffa_bounty_calc

execute as @a[scores={Player=1..12}] run function gamemode:ffa/bounty/evaluate_player with entity @s EnderItems[0].components.minecraft:custom_data
