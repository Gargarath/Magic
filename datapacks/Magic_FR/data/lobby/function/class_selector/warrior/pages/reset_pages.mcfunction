## appelée par lobby_is_ready

scoreboard players set $current_page class_selector_warrior 1
scoreboard players set $passive class_selector_warrior 1
scoreboard players set $weapon1 class_selector_warrior 0
scoreboard players set $spell1 class_selector_warrior 1
scoreboard players set $spell2 class_selector_warrior 1
scoreboard players set $spell3 class_selector_warrior 1
# initialise les numéros de pages
execute as @e[type=marker,tag=select_warrior_spot,limit=1] at @s run function lobby:class_selector/warrior/pages/passive/main
# affiche la page passif