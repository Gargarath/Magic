## appelée par main:loop quand @s clique sur les options
# permet de lui ouvrir le GUI des options

scoreboard players reset @s opt_open_options
scoreboard players enable @s opt_open_options
# redonne le trigger à @s


data modify storage options keybind_order set value {"text":"a"}
data modify storage options display_jump_timer set value {"text":"a"}

dialog show @s main:options/options_main
# affiche les options à @s