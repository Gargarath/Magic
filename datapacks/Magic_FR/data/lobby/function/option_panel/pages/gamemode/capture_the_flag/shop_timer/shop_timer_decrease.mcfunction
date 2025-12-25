## appelée par interact_with_menu/check_clicked_button si @s clique sur le boutton moins
# permet de passer à la page précedente

scoreboard players remove $shop_timer option_panel 1
# enlève 1 au score de shop_timer

execute if score $shop_timer option_panel matches 4 run scoreboard players set $shop_timer option_panel -1
execute if score $shop_timer option_panel matches 9 run scoreboard players set $shop_timer option_panel 5
execute if score $shop_timer option_panel matches 19 run scoreboard players set $shop_timer option_panel 10
execute if score $shop_timer option_panel matches 29 run scoreboard players set $shop_timer option_panel 20
execute if score $shop_timer option_panel matches 44 run scoreboard players set $shop_timer option_panel 30
execute if score $shop_timer option_panel matches 59 run scoreboard players set $shop_timer option_panel 45
execute if score $shop_timer option_panel matches 79 run scoreboard players set $shop_timer option_panel 60
execute if score $shop_timer option_panel matches 99 run scoreboard players set $shop_timer option_panel 80
execute if score $shop_timer option_panel matches -2 run scoreboard players set $shop_timer option_panel 100
# passe au cran précédent selon à combien on est

function lobby:option_panel/pages/gamemode/capture_the_flag/shop_timer/display
# affiche le nouveau score