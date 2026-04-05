## appelée par give_ffa_team/check_player
# permet de mettre la bonne équipe à @s et de la personnaliser selon ses choix


execute if entity @s[tag=warrior] run team modify player9 prefix {"text":"\uE601 ","color":white}
execute if entity @s[tag=archer] run team modify player9 prefix {"text":"\uE602 ","color":white}
execute if entity @s[tag=mage] run team modify player9 prefix {"text":"\uE603 ","color":white}
execute if entity @s[tag=rogue] run team modify player9 prefix {"text":"\uE604 ","color":white}

execute if score @s opt_color matches 0 run team modify player9 color white
execute if score @s opt_color matches 1 run team modify player9 color gray
execute if score @s opt_color matches 2 run team modify player9 color dark_gray
execute if score @s opt_color matches 3 run team modify player9 color black
execute if score @s opt_color matches 4 run team modify player9 color aqua
execute if score @s opt_color matches 5 run team modify player9 color dark_aqua
execute if score @s opt_color matches 6 run team modify player9 color blue
execute if score @s opt_color matches 7 run team modify player9 color dark_blue
execute if score @s opt_color matches 8 run team modify player9 color green
execute if score @s opt_color matches 9 run team modify player9 color dark_green
execute if score @s opt_color matches 10 run team modify player9 color light_purple
execute if score @s opt_color matches 11 run team modify player9 color dark_purple
execute if score @s opt_color matches 12 run team modify player9 color red
execute if score @s opt_color matches 13 run team modify player9 color dark_red
execute if score @s opt_color matches 14 run team modify player9 color yellow
execute if score @s opt_color matches 15 run team modify player9 color gold

team join player9