## appelée par les différents launch_map
# permet de setup la bossbar d'info du match

execute if score $gamemode option_panel matches 1 run data modify storage matchinfo.blue flag_state set value "\uE301"
execute if score $gamemode option_panel matches 1 run data modify storage matchinfo.red flag_state set value "\uE304"
# reset les position de drapeau pour chaque équipe (si on est en mode CTF)

execute if score selected_map variables matches 1 run data modify storage minecraft:matchinfo map set value {"text":"\uE708Pirate\uE707","color":"aqua","bold":true}
execute if score selected_map variables matches 2 run data modify storage minecraft:matchinfo map set value {"text":"Cimetière","color":"red","bold":true}
execute if score selected_map variables matches 3 run data modify storage minecraft:matchinfo map set value {"text":"\uE710Usine\uE710","color":"dark_red","bold":true}
execute if score selected_map variables matches 4 run data modify storage minecraft:matchinfo map set value {"text":"\uE706Volcan\uE706","color":"dark_red","bold":true}
execute if score selected_map variables matches 5 run data modify storage minecraft:matchinfo map set value {"text":"\uE710Ruine\uE710","color":"gray","bold":true}
execute if score selected_map variables matches 6 run data modify storage minecraft:matchinfo map set value {"text":"\uE705Bonbon\uE704","color":"light_purple","bold":true}
# affiche la map sur laquelle on joue