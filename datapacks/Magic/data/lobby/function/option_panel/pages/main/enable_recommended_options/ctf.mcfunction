## appelée par enable_recommended_options/enable si on est en CTF
# active les options recommandées propre au CTF

# lobby
scoreboard players set $matchmaking option_panel 1

# gamemode
scoreboard players set $secondary_objectives option_panel 1
scoreboard players set $teamkill option_panel 1
scoreboard players set $show_next_map option_panel 0
scoreboard players set $shop_timer option_panel 60

# maps
scoreboard players set $block_same_map map_selection 1
scoreboard players set $random map_selection 1

# shop
scoreboard players set $build_reset option_panel 1
scoreboard players set $ph_start option_panel 300
scoreboard players set $ph_per_round option_panel 300
scoreboard players set $ph_per_obj option_panel 75

# fun
