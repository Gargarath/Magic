## appelée par interact_with_menu/check_clicked_button si @s clique sur le boutton moins
# permet de passer à la page précedente

scoreboard players remove $ph_per_round option_panel 1
# enlève 1 au score de shop_timer
execute if score $ph_per_round option_panel matches 24 run scoreboard players set $ph_per_round option_panel 0
execute if score $ph_per_round option_panel matches 49 run scoreboard players set $ph_per_round option_panel 25
execute if score $ph_per_round option_panel matches 74 run scoreboard players set $ph_per_round option_panel 50
execute if score $ph_per_round option_panel matches 99 run scoreboard players set $ph_per_round option_panel 75
execute if score $ph_per_round option_panel matches 149 run scoreboard players set $ph_per_round option_panel 100
execute if score $ph_per_round option_panel matches 199 run scoreboard players set $ph_per_round option_panel 150
execute if score $ph_per_round option_panel matches 224 run scoreboard players set $ph_per_round option_panel 200
execute if score $ph_per_round option_panel matches 249 run scoreboard players set $ph_per_round option_panel 225
execute if score $ph_per_round option_panel matches 274 run scoreboard players set $ph_per_round option_panel 250
execute if score $ph_per_round option_panel matches 299 run scoreboard players set $ph_per_round option_panel 275
execute if score $ph_per_round option_panel matches 324 run scoreboard players set $ph_per_round option_panel 300
execute if score $ph_per_round option_panel matches 349 run scoreboard players set $ph_per_round option_panel 325
execute if score $ph_per_round option_panel matches 374 run scoreboard players set $ph_per_round option_panel 350
execute if score $ph_per_round option_panel matches 399 run scoreboard players set $ph_per_round option_panel 375
execute if score $ph_per_round option_panel matches -1 run scoreboard players set $ph_per_round option_panel 400
# passe au cran précédent selon à combien on est

function lobby:option_panel/pages/shop/ph_per_round/display
# affiche le nouveau score