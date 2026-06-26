## appelee par interact_with_menu/check_clicked_button si @s clique sur le bouton plus
# passe au palier suivant du shop_timer

scoreboard players operation $shop_timer_old option_panel = $shop_timer option_panel
# garde la valeur de depart pour snap au palier suivant

execute if score $shop_timer_old option_panel matches -1 run scoreboard players set $shop_timer option_panel 5
execute if score $shop_timer_old option_panel matches 0..4 run scoreboard players set $shop_timer option_panel 5
execute if score $shop_timer_old option_panel matches 5..9 run scoreboard players set $shop_timer option_panel 10
execute if score $shop_timer_old option_panel matches 10..19 run scoreboard players set $shop_timer option_panel 20
execute if score $shop_timer_old option_panel matches 20..29 run scoreboard players set $shop_timer option_panel 30
execute if score $shop_timer_old option_panel matches 30..44 run scoreboard players set $shop_timer option_panel 45
execute if score $shop_timer_old option_panel matches 45..59 run scoreboard players set $shop_timer option_panel 60
execute if score $shop_timer_old option_panel matches 60..79 run scoreboard players set $shop_timer option_panel 80
execute if score $shop_timer_old option_panel matches 80..99 run scoreboard players set $shop_timer option_panel 100
execute if score $shop_timer_old option_panel matches 100.. run scoreboard players set $shop_timer option_panel -1
# passe au cran suivant selon le palier actuel

# stock la valeur du shop timer et affiche le shop timer
execute store result storage temp temp int 1 run scoreboard players get $shop_timer option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/gamemode/capture_the_flag/shop_timer/display with storage lobby:language translate
