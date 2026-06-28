## appelée par click_keybind_order
# permet d'activer/désactiver l'affichage du chrono dans les jumps

scoreboard players add @s opt_display_jump_timer 1
execute if score @s opt_display_jump_timer matches 2 run scoreboard players set @s opt_display_jump_timer 0