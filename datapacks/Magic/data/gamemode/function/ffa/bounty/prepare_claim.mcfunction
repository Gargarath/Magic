## Macro appelée en tant que victime avec {player:<numéro>}.

scoreboard players operation $bounty_payout ffa_bounty_calc = @s ffa_bounty_level
scoreboard players operation $bounty_payout ffa_bounty_calc *= $ph_per_kills option_panel
$data modify storage gamemode:ffa_bounty victim_name set from storage main:killfeed name.$(player)
scoreboard players set @s ffa_bounty_level 0
scoreboard players set @s ffa_bounty_calc 0
