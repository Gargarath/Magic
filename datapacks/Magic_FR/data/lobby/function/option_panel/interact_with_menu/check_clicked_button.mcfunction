# Fonction appellée par lobby:interact_with_menu/interact_with_menu au nom du boutton qui a été cliqué si un joueur a cliqué sur un bouton et à le droit
# permet de lancer le check de quel bouton

# tab
execute if entity @s[tag=optn_menu_main_tab] on target if score @s operator matches 2 run function lobby:option_panel/pages/main/display_main_tab
execute if entity @s[tag=optn_menu_lobby_tab] on target if score @s operator matches 2 run function lobby:option_panel/pages/lobby/display_lobby_tab
execute if entity @s[tag=optn_menu_gamemode_tab] on target if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/display_gamemode_tab
execute if entity @s[tag=optn_menu_maps_tab] on target if score @s operator matches 2 run function lobby:option_panel/pages/maps/display_maps_tab
execute if entity @s[tag=optn_menu_shop_tab] on target if score @s operator matches 2 run function lobby:option_panel/pages/shop/display_shop_tab
execute if entity @s[tag=optn_menu_fun_tab] on target if score @s operator matches 2 run function lobby:option_panel/pages/fun/display_fun_tab

# Main
execute if entity @s[tag=optn_menu_main_start_game] on target if score @s operator matches 2 run function lobby:option_panel/pages/lobby/launch_game
execute if entity @s[tag=optn_menu_main_recommended_button] on target if score @s operator matches 2 run function lobby:option_panel/pages/main/recommended_options
execute if entity @s[tag=optn_menu_main_recommended_button_yes] on target if score @s operator matches 2 run function lobby:option_panel/pages/main/enable_recommended_options

# lobby
execute if entity @s[tag=optn_menu_lobby_enable_arena_on] on target if score @s operator matches 2 run function lobby:option_panel/pages/lobby/arena/arena_on
execute if entity @s[tag=optn_menu_lobby_enable_arena_off] on target if score @s operator matches 2 run function lobby:option_panel/pages/lobby/arena/arena_off
execute if entity @s[tag=optn_menu_lobby_enable_maps_on] on target if score @s operator matches 2 run function lobby:option_panel/pages/lobby/maps/maps_on
execute if entity @s[tag=optn_menu_lobby_enable_maps_off] on target if score @s operator matches 2 run function lobby:option_panel/pages/lobby/maps/maps_off
execute if entity @s[tag=optn_menu_lobby_enable_jump_on] on target if score @s operator matches 2 run function lobby:option_panel/pages/lobby/jump/jump_on
execute if entity @s[tag=optn_menu_lobby_enable_jump_off] on target if score @s operator matches 2 run function lobby:option_panel/pages/lobby/jump/jump_off
execute if entity @s[tag=optn_menu_lobby_operator_access_players] on target if score @s operator matches 2 run function lobby:option_panel/pages/lobby/operator_access/players_are_admin
execute if entity @s[tag=optn_menu_lobby_operator_access_op] on target if score @s operator matches 2 run dialog show @s main:option_panel/confirm_admin_are_op
execute if entity @s[tag=optn_menu_lobby_enable_matchmaking_on] on target if score @s operator matches 2 run function lobby:option_panel/pages/lobby/matchmaking/matchmaking_on
execute if entity @s[tag=optn_menu_lobby_enable_matchmaking_off] on target if score @s operator matches 2 run function lobby:option_panel/pages/lobby/matchmaking/matchmaking_off
execute if entity @s[tag=optn_menu_lobby_enable_force_launch_on] on target if score @s operator matches 2 run function lobby:option_panel/pages/lobby/force_launch/force_launch_on
execute if entity @s[tag=optn_menu_lobby_enable_force_launch_off] on target if score @s operator matches 2 run function lobby:option_panel/pages/lobby/force_launch/force_launch_off

# gamemode (FFA)
execute if entity @s[tag=optn_menu_gamemode_ctf] on target if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/capture_the_flag/display_capture_the_flag_tab

# gamemode (CTF)

execute if entity @s[tag=optn_menu_gamemode_ffa] on target if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/free_for_all/display_free_for_all_tab
    # secondary objective
execute if entity @s[tag=optn_menu_gamemode_secondary_objectives_on] on target if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/capture_the_flag/secondary_objectives/secondary_objectives_on
execute if entity @s[tag=optn_menu_gamemode_secondary_objectives_off] on target if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/capture_the_flag/secondary_objectives/secondary_objectives_off
    # teamkill
execute if entity @s[tag=optn_menu_gamemode_teamkill_on] on target if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/capture_the_flag/teamkill/teamkill_on
execute if entity @s[tag=optn_menu_gamemode_teamkill_off] on target if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/capture_the_flag/teamkill/teamkill_off
    # show_next_map
execute if entity @s[tag=optn_menu_gamemode_show_next_map_on] on target if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/capture_the_flag/show_next_map/show_next_map_on
execute if entity @s[tag=optn_menu_gamemode_show_next_map_off] on target if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/capture_the_flag/show_next_map/show_next_map_off
    # shop_timer
execute if entity @s[tag=optn_menu_gamemode_shop_timer_right] on target if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/capture_the_flag/shop_timer/shop_timer_increase
execute if entity @s[tag=optn_menu_gamemode_shop_timer_center] on target if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/capture_the_flag/shop_timer/shop_timer_increase
execute if entity @s[tag=optn_menu_gamemode_shop_timer_left] on target if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/capture_the_flag/shop_timer/shop_timer_decrease

# maps
execute if entity @s[tag=optn_menu_maps_map_1] on target if score @s operator matches 2 run function lobby:option_panel/pages/maps/map_1/go_up
execute if entity @s[tag=optn_menu_maps_map_2] on target if score @s operator matches 2 run function lobby:option_panel/pages/maps/map_2/go_up
execute if entity @s[tag=optn_menu_maps_map_3] on target if score @s operator matches 2 run function lobby:option_panel/pages/maps/map_3/go_up
execute if entity @s[tag=optn_menu_maps_map_4] on target if score @s operator matches 2 run function lobby:option_panel/pages/maps/map_4/go_up

execute if entity @s[tag=optn_menu_maps_map_selection_random] on target if score @s operator matches 2 run function lobby:option_panel/pages/maps/map_selection/random_maps
execute if entity @s[tag=optn_menu_maps_map_selection_predefined] on target if score @s operator matches 2 run function lobby:option_panel/pages/maps/map_selection/predefined_maps

execute if entity @s[tag=optn_menu_maps_rng_lvl1] on target if score @s operator matches 2 run function lobby:option_panel/pages/maps/rng_lvl/cant_play_twice
execute if entity @s[tag=optn_menu_maps_rng_lvl2] on target if score @s operator matches 2 run function lobby:option_panel/pages/maps/rng_lvl/can_play_twice

execute if entity @s[tag=optn_menu_maps_time_change_on] on target if score @s operator matches 2 run function lobby:option_panel/pages/maps/time_change/on
execute if entity @s[tag=optn_menu_maps_time_change_off] on target if score @s operator matches 2 run function lobby:option_panel/pages/maps/time_change/off

# shop

    # build_reset
execute if entity @s[tag=optn_menu_shop_build_reset_never] on target if score @s operator matches 2 run function lobby:option_panel/pages/shop/build_reset/build_reset_never
execute if entity @s[tag=optn_menu_shop_build_reset_round_only] on target if score @s operator matches 2 run function lobby:option_panel/pages/shop/build_reset/build_reset_round_only
execute if entity @s[tag=optn_menu_shop_build_reset_game] on target if score @s operator matches 2 run function lobby:option_panel/pages/shop/build_reset/build_reset_game

    # ph_start
execute if entity @s[tag=optn_menu_shop_ph_start_right] on target if score @s operator matches 2 run function lobby:option_panel/pages/shop/ph_start/ph_start_increase
execute if entity @s[tag=optn_menu_shop_ph_start_center] on target if score @s operator matches 2 run function lobby:option_panel/pages/shop/ph_start/ph_start_increase
execute if entity @s[tag=optn_menu_shop_ph_start_left] on target if score @s operator matches 2 run function lobby:option_panel/pages/shop/ph_start/ph_start_decrease

    # ph_per_round
execute if entity @s[tag=optn_menu_shop_ph_per_round_right] on target if score @s operator matches 2 run function lobby:option_panel/pages/shop/ph_per_round/ph_per_round_increase
execute if entity @s[tag=optn_menu_shop_ph_per_round_center] on target if score @s operator matches 2 run function lobby:option_panel/pages/shop/ph_per_round/ph_per_round_increase
execute if entity @s[tag=optn_menu_shop_ph_per_round_left] on target if score @s operator matches 2 run function lobby:option_panel/pages/shop/ph_per_round/ph_per_round_decrease

    # ph_per_objs
execute if entity @s[tag=optn_menu_shop_ph_per_obj_right] on target if score @s operator matches 2 run function lobby:option_panel/pages/shop/ph_per_obj/ph_per_obj_increase
execute if entity @s[tag=optn_menu_shop_ph_per_obj_center] on target if score @s operator matches 2 run function lobby:option_panel/pages/shop/ph_per_obj/ph_per_obj_increase
execute if entity @s[tag=optn_menu_shop_ph_per_obj_left] on target if score @s operator matches 2 run function lobby:option_panel/pages/shop/ph_per_obj/ph_per_obj_decrease

# fun

    # no_cooldowns
execute if entity @s[tag=optn_menu_fun_no_cooldowns_on] on target if score @s operator matches 2 run function lobby:option_panel/pages/fun/no_cooldowns/no_cooldowns_on
execute if entity @s[tag=optn_menu_fun_no_cooldowns_off] on target if score @s operator matches 2 run function lobby:option_panel/pages/fun/no_cooldowns/no_cooldowns_off

    # infinite_money
execute if entity @s[tag=optn_menu_fun_infinite_money_on] on target if score @s operator matches 2 run function lobby:option_panel/pages/fun/infinite_money/infinite_money_on
execute if entity @s[tag=optn_menu_fun_infinite_money_off] on target if score @s operator matches 2 run function lobby:option_panel/pages/fun/infinite_money/infinite_money_off

execute unless entity @s[tag=optn_menu_main_start_game] on target at @s[scores={operator=2}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1
data remove entity @s interaction


