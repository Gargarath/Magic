## appelée par interact_with_menu/check_clicked_button si @s active les options recommandées
# permet d'activer les options recommandés

# lobby
scoreboard players set $lobby_arena option_panel 1
scoreboard players set $lobby_maps option_panel 1
scoreboard players set $lobby_jump option_panel 1
scoreboard players set $operator_access option_panel 0
scoreboard players set $force_launch option_panel 0

# gamemode

# maps
scoreboard players set $time_change option_panel 1

# shop

# fun
scoreboard players set $no_cooldowns option_panel 0
scoreboard players set $infinite_money option_panel 0

# propre au mode
execute if score $gamemode option_panel matches 0 run function lobby:option_panel/pages/main/enable_recommended_options/ffa
execute if score $gamemode option_panel matches 1 run function lobby:option_panel/pages/main/enable_recommended_options/ctf

function lobby:option_panel/pages/main/display_main_tab with storage lobby:language translate
# retourne sur la page main