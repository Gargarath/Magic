## appelee par interact_with_menu/check_clicked_button si @s clique sur le bouton moins
# passe au palier precedent du shop_timer

scoreboard players operation $shop_timer_old option_panel = $shop_timer option_panel
# garde la valeur de depart pour snap au palier precedent

execute if score $shop_timer_old option_panel matches -1 run scoreboard players set $shop_timer option_panel 100
execute if score $shop_timer_old option_panel matches 0..5 run scoreboard players set $shop_timer option_panel -1
execute if score $shop_timer_old option_panel matches 6..10 run scoreboard players set $shop_timer option_panel 5
execute if score $shop_timer_old option_panel matches 11..20 run scoreboard players set $shop_timer option_panel 10
execute if score $shop_timer_old option_panel matches 21..30 run scoreboard players set $shop_timer option_panel 20
execute if score $shop_timer_old option_panel matches 31..45 run scoreboard players set $shop_timer option_panel 30
execute if score $shop_timer_old option_panel matches 46..60 run scoreboard players set $shop_timer option_panel 45
execute if score $shop_timer_old option_panel matches 61..80 run scoreboard players set $shop_timer option_panel 60
execute if score $shop_timer_old option_panel matches 81..100 run scoreboard players set $shop_timer option_panel 80
execute if score $shop_timer_old option_panel matches 101.. run scoreboard players set $shop_timer option_panel 100
# passe au cran precedent selon le palier actuel

# stock la valeur du shop timer et affiche le shop timer
execute store result storage temp temp int 1 run scoreboard players get $shop_timer option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/gamemode/capture_the_flag/shop_timer/display with storage lobby:language translate
