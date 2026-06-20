## appelee par interact_with_menu/check_clicked_button si @s clique sur le bouton plus
# passe au palier suivant du ph_per_round

scoreboard players operation $ph_per_round_old option_panel = $ph_per_round option_panel
# garde la valeur de depart pour snap au palier suivant

execute if score $ph_per_round_old option_panel matches ..-1 run scoreboard players set $ph_per_round option_panel 0
execute if score $ph_per_round_old option_panel matches 0..24 run scoreboard players set $ph_per_round option_panel 25
execute if score $ph_per_round_old option_panel matches 25..49 run scoreboard players set $ph_per_round option_panel 50
execute if score $ph_per_round_old option_panel matches 50..74 run scoreboard players set $ph_per_round option_panel 75
execute if score $ph_per_round_old option_panel matches 75..99 run scoreboard players set $ph_per_round option_panel 100
execute if score $ph_per_round_old option_panel matches 100..149 run scoreboard players set $ph_per_round option_panel 150
execute if score $ph_per_round_old option_panel matches 150..199 run scoreboard players set $ph_per_round option_panel 200
execute if score $ph_per_round_old option_panel matches 200..249 run scoreboard players set $ph_per_round option_panel 250
execute if score $ph_per_round_old option_panel matches 250..299 run scoreboard players set $ph_per_round option_panel 300
execute if score $ph_per_round_old option_panel matches 300..349 run scoreboard players set $ph_per_round option_panel 350
execute if score $ph_per_round_old option_panel matches 350..399 run scoreboard players set $ph_per_round option_panel 400
execute if score $ph_per_round_old option_panel matches 400..449 run scoreboard players set $ph_per_round option_panel 450
execute if score $ph_per_round_old option_panel matches 450..499 run scoreboard players set $ph_per_round option_panel 500
execute if score $ph_per_round_old option_panel matches 500..549 run scoreboard players set $ph_per_round option_panel 550
execute if score $ph_per_round_old option_panel matches 550..599 run scoreboard players set $ph_per_round option_panel 600
execute if score $ph_per_round_old option_panel matches 600.. run scoreboard players set $ph_per_round option_panel 0
# passe au cran suivant selon le palier actuel

# stock la valeur du shop per round et l'affiche
execute store result storage temp temp int 1 run scoreboard players get $ph_per_round option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ph_per_round/display with storage lobby:language translate
