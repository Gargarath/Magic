## appelée par interact_with_menu/check_clicked_button si @s active les options recommandées
# permet d'activer les options recommandés

# lobby
scoreboard players set $lobby_arena option_panel 1
scoreboard players set $lobby_maps option_panel 1
scoreboard players set $lobby_jump option_panel 1
scoreboard players set $operator_access option_panel 0
scoreboard players set $matchmaking option_panel 1
scoreboard players set $force_launch option_panel 0

# gamemode
scoreboard players set $secondary_objectives option_panel 1
scoreboard players set $teamkill option_panel 1
scoreboard players set $show_next_map option_panel 0
scoreboard players set $shop_timer option_panel 60

# maps
scoreboard players set $block_same_map map_selection 1
scoreboard players set $random map_selection 1
scoreboard players set $time_change option_panel 1

# shop
scoreboard players set $build_reset option_panel 1
scoreboard players set $ph_start option_panel 300
scoreboard players set $ph_per_round option_panel 300
scoreboard players set $ph_per_obj option_panel 75

# fun
scoreboard players set $no_cooldowns option_panel 0
scoreboard players set $infinite_money option_panel 0

function lobby:option_panel/pages/main/display_main_tab
# retourne sur la page main