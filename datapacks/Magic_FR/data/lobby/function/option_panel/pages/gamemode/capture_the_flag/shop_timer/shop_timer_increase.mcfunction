## appelée par interact_with_menu/check_clicked_button si @s clique sur le boutton plus
# permet de passer à la page suivante

scoreboard players add $shop_timer option_panel 1
# ajoute 1 au score de shop_timer

execute if score $shop_timer option_panel matches 101 run scoreboard players set $shop_timer option_panel -1
execute if score $shop_timer option_panel matches 0 run scoreboard players set $shop_timer option_panel 5
execute if score $shop_timer option_panel matches 6 run scoreboard players set $shop_timer option_panel 10
execute if score $shop_timer option_panel matches 11 run scoreboard players set $shop_timer option_panel 20
execute if score $shop_timer option_panel matches 21 run scoreboard players set $shop_timer option_panel 30
execute if score $shop_timer option_panel matches 31 run scoreboard players set $shop_timer option_panel 45
execute if score $shop_timer option_panel matches 46 run scoreboard players set $shop_timer option_panel 60
execute if score $shop_timer option_panel matches 61 run scoreboard players set $shop_timer option_panel 80
execute if score $shop_timer option_panel matches 81 run scoreboard players set $shop_timer option_panel 100
# passe au cran suivant selon à combien on est

function lobby:option_panel/pages/gamemode/capture_the_flag/shop_timer/display
# affiche le nouveau score