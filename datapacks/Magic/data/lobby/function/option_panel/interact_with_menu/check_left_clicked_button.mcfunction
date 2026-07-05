# Fonction appellée par lobby:interact_with_menu/left_click_on_menu au nom du boutton qui a été cliqué si un joueur a cliqué sur un bouton avec left click et à le droit
# permet de lancer le check de quel bouton

# main
execute if entity @s[tag=optn_menu_main_lang] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/main/lang/lang_decrease

# gamemode (CTF)

    # shop_timer
execute if entity @s[tag=optn_menu_gamemode_shop_timer_center] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/capture_the_flag/shop_timer/shop_timer_decrease

# gamemode (FFA)

    # kills_goal
execute if entity @s[tag=optn_menu_gamemode_ffa_goal_score_center] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/gamemode/free_for_all/kills_goal/ph_start_decrease

# maps
execute if entity @s[tag=optn_menu_maps_map_1] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/maps/map_1/go_down
execute if entity @s[tag=optn_menu_maps_map_2] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/maps/map_2/go_down
execute if entity @s[tag=optn_menu_maps_map_3] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/maps/map_3/go_down
execute if entity @s[tag=optn_menu_maps_map_4] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/maps/map_4/go_down

# shop

    # ph_start
execute if entity @s[tag=optn_menu_shop_ph_start_center] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/shop/ph_start/ph_start_decrease

    # ph_per_round
execute if entity @s[tag=optn_menu_shop_ph_per_round_center] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/shop/ph_per_round/ph_per_round_decrease

    # ph_per_objs
execute if entity @s[tag=optn_menu_shop_ph_per_obj_center] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/shop/ph_per_obj/ph_per_obj_decrease

    # économie FFA
execute if entity @s[tag=optn_menu_ffa_passive_money_center] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/shop/ffa_economy/passive_money/decrease
execute if entity @s[tag=optn_menu_ffa_passive_speed_center] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/shop/ffa_economy/passive_speed/decrease
execute if entity @s[tag=optn_menu_ffa_ph_per_kill_center] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/shop/ffa_economy/ph_per_kill/decrease
execute if entity @s[tag=optn_menu_ffa_first_income_delay_center] on attacker if score @s operator matches 2 run function lobby:option_panel/pages/shop/ffa_economy/first_income_delay/decrease





execute if entity @s[tag=optn_menu_left_clickable] on attacker at @s[scores={operator=2}] run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 100 1

data remove entity @s attack
