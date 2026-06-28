## appelée par click_keybind_order
# permet d'alterner entre raccourcis depuis gauche et droite

scoreboard players add @s opt_keybind_order 1
execute if score @s opt_keybind_order matches 3 run scoreboard players set @s opt_keybind_order 1