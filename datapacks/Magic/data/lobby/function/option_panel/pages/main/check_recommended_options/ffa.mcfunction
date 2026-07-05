## appelée par check_recommended_options/check quand on est en FFA
## permet de check si on a les options recommandées d'activées en FFA

scoreboard players set $recommended_optns option_panel 1


# lobby
execute unless score $lobby_arena option_panel matches 1 run scoreboard players set $recommended_optns option_panel 0
execute unless score $lobby_maps option_panel matches 1 run scoreboard players set $recommended_optns option_panel 0
execute unless score $lobby_jump option_panel matches 1 run scoreboard players set $recommended_optns option_panel 0
execute unless score $operator_access option_panel matches 0 run scoreboard players set $recommended_optns option_panel 0
execute unless score $matchmaking option_panel matches 1 run scoreboard players set $recommended_optns option_panel 0
execute unless score $force_launch option_panel matches 0 run scoreboard players set $recommended_optns option_panel 0

# gamemode
# ctf
execute unless score $kills_goal option_panel matches 15 run scoreboard players set $recommended_optns option_panel 0

# maps
execute unless score $time_change option_panel matches 1 run scoreboard players set $recommended_optns option_panel 0

# shop
execute unless score $build_reset option_panel matches 1 run scoreboard players set $recommended_optns option_panel 0
execute unless score $ph_start option_panel matches 300 run scoreboard players set $recommended_optns option_panel 0
execute unless score $passive_money option_panel matches 10 run scoreboard players set $recommended_optns option_panel 0
execute unless score $passive_income_speed option_panel matches 7 run scoreboard players set $recommended_optns option_panel 0
execute unless score $ph_per_kills option_panel matches 10 run scoreboard players set $recommended_optns option_panel 0
execute unless score $first_income_delay option_panel matches 10 run scoreboard players set $recommended_optns option_panel 0

# fun
execute unless score $no_cooldowns option_panel matches 0 run scoreboard players set $recommended_optns option_panel 0
execute unless score $infinite_money option_panel matches 0 run scoreboard players set $recommended_optns option_panel 0
