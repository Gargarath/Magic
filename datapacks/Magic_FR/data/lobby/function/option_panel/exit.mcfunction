##  appelée par lobby:option_panel/pageX/optn_panel_loop si le joueur à voulu quitter le menu d'option
## permet de tp le joueur en dehors de la zone et de reset les items frames

data merge entity @e[type=minecraft:glow_item_frame,tag=option_panel_map_15,limit=1] {ItemRotation:0b}

effect clear @s minecraft:invisibility
tag @s remove in_opt_panel

execute as @s at @s run tp @s 0 100 0 180 0
# tp le joueur dans la zone d'option et réhausse légérement sa vue
