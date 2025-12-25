## appelée par interact_with_menu/check_clicked_button si @s clique sur le boutton plus
# permet de passer à la page suivante

scoreboard players add $ph_start option_panel 1
# ajoute 1 au score de shop_timer

execute if score $ph_start option_panel matches 401 run scoreboard players set $ph_start option_panel 0
execute if score $ph_start option_panel matches 1 run scoreboard players set $ph_start option_panel 25
execute if score $ph_start option_panel matches 26 run scoreboard players set $ph_start option_panel 50
execute if score $ph_start option_panel matches 51 run scoreboard players set $ph_start option_panel 75
execute if score $ph_start option_panel matches 76 run scoreboard players set $ph_start option_panel 100
execute if score $ph_start option_panel matches 101 run scoreboard players set $ph_start option_panel 150
execute if score $ph_start option_panel matches 151 run scoreboard players set $ph_start option_panel 200
execute if score $ph_start option_panel matches 201 run scoreboard players set $ph_start option_panel 225
execute if score $ph_start option_panel matches 226 run scoreboard players set $ph_start option_panel 250
execute if score $ph_start option_panel matches 251 run scoreboard players set $ph_start option_panel 275
execute if score $ph_start option_panel matches 276 run scoreboard players set $ph_start option_panel 300
execute if score $ph_start option_panel matches 301 run scoreboard players set $ph_start option_panel 325
execute if score $ph_start option_panel matches 326 run scoreboard players set $ph_start option_panel 350
execute if score $ph_start option_panel matches 351 run scoreboard players set $ph_start option_panel 375
execute if score $ph_start option_panel matches 376 run scoreboard players set $ph_start option_panel 400
# passe au cran suivant selon à combien on est

function lobby:option_panel/pages/shop/ph_start/display
# affiche le nouveau score