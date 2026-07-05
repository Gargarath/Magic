## Macro appelée en tant que joueur évalué avec {player:<numéro>}.

# Un niveau par tranche complète de trois kills de série.
scoreboard players operation @s ffa_bounty_calc = @s ffa_bounty_streak
scoreboard players operation @s ffa_bounty_calc /= $three ffa_bounty_calc

# Un niveau par tranche complète de trois kills au-dessus de la moyenne.
scoreboard players operation $lead_level ffa_bounty_calc = @s stat_killcount_player
scoreboard players operation $lead_level ffa_bounty_calc -= $kill_average ffa_bounty_calc
execute if score $lead_level ffa_bounty_calc matches ..0 run scoreboard players set $lead_level ffa_bounty_calc 0
scoreboard players operation $lead_level ffa_bounty_calc /= $three ffa_bounty_calc
scoreboard players operation @s ffa_bounty_calc += $lead_level ffa_bounty_calc

execute if score @s ffa_bounty_calc matches 4.. run scoreboard players set @s ffa_bounty_calc 3
execute if score @s ffa_bounty_calc > @s ffa_bounty_level run function gamemode:ffa/bounty/upgrade with entity @s EnderItems[0].components.minecraft:custom_data
