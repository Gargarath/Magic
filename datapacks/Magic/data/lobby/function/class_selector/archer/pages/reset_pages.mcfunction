## appelée par lobby_is_ready

scoreboard players set $current_page class_selector_archer 1
scoreboard players set $passive class_selector_archer 1
scoreboard players set $weapon1 class_selector_archer 0
scoreboard players set $spell1 class_selector_archer 1
scoreboard players set $spell2 class_selector_archer 1
scoreboard players set $spell3 class_selector_archer 1
# initialise les numéros de pages
execute as @e[type=marker,tag=select_archer_spot,limit=1] at @s run function lobby:class_selector/archer/pages/passive/main with storage lobby:language translate
# affiche la page passif