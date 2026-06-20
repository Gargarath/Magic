## appelee par interact_with_menu/check_clicked_button si @s clique sur le bouton moins
# passe au palier precedent du ph_start

scoreboard players operation $ph_start_old option_panel = $ph_start option_panel
# garde la valeur de depart pour snap au palier precedent

execute if score $ph_start_old option_panel matches ..0 run scoreboard players set $ph_start option_panel 600
execute if score $ph_start_old option_panel matches 1..25 run scoreboard players set $ph_start option_panel 0
execute if score $ph_start_old option_panel matches 26..50 run scoreboard players set $ph_start option_panel 25
execute if score $ph_start_old option_panel matches 51..75 run scoreboard players set $ph_start option_panel 50
execute if score $ph_start_old option_panel matches 76..100 run scoreboard players set $ph_start option_panel 75
execute if score $ph_start_old option_panel matches 101..150 run scoreboard players set $ph_start option_panel 100
execute if score $ph_start_old option_panel matches 151..200 run scoreboard players set $ph_start option_panel 150
execute if score $ph_start_old option_panel matches 201..250 run scoreboard players set $ph_start option_panel 200
execute if score $ph_start_old option_panel matches 251..300 run scoreboard players set $ph_start option_panel 250
execute if score $ph_start_old option_panel matches 301..350 run scoreboard players set $ph_start option_panel 300
execute if score $ph_start_old option_panel matches 351..400 run scoreboard players set $ph_start option_panel 350
execute if score $ph_start_old option_panel matches 401..450 run scoreboard players set $ph_start option_panel 400
execute if score $ph_start_old option_panel matches 451..500 run scoreboard players set $ph_start option_panel 450
execute if score $ph_start_old option_panel matches 501..550 run scoreboard players set $ph_start option_panel 500
execute if score $ph_start_old option_panel matches 551..600 run scoreboard players set $ph_start option_panel 550
execute if score $ph_start_old option_panel matches 601.. run scoreboard players set $ph_start option_panel 600
# passe au cran precedent selon le palier actuel

# stock la valeur du shop at start et l'affiche
execute store result storage temp temp int 1 run scoreboard players get $ph_start option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ph_start/display with storage lobby:language translate
