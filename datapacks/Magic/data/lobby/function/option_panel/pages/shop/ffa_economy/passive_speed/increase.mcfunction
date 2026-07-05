scoreboard players operation $old option_panel = $passive_income_speed option_panel
execute if score $old option_panel matches ..0 run scoreboard players set $passive_income_speed option_panel 3
execute if score $old option_panel matches 1..2 run scoreboard players set $passive_income_speed option_panel 3
execute if score $old option_panel matches 3..4 run scoreboard players set $passive_income_speed option_panel 5
execute if score $old option_panel matches 5..6 run scoreboard players set $passive_income_speed option_panel 7
execute if score $old option_panel matches 7..9 run scoreboard players set $passive_income_speed option_panel 10
execute if score $old option_panel matches 10..14 run scoreboard players set $passive_income_speed option_panel 15
execute if score $old option_panel matches 15..19 run scoreboard players set $passive_income_speed option_panel 20
execute if score $old option_panel matches 20..24 run scoreboard players set $passive_income_speed option_panel 25
execute if score $old option_panel matches 25..29 run scoreboard players set $passive_income_speed option_panel 30
execute if score $old option_panel matches 30 run scoreboard players set $passive_income_speed option_panel 0
execute if score $old option_panel matches 31.. run scoreboard players set $passive_income_speed option_panel 0
execute store result storage temp temp int 1 run scoreboard players get $passive_income_speed option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ffa_economy/passive_speed/display with storage lobby:language translate
execute if entity @n[type=item_display,tag=optn_menu_ffa_passive_speed] run function lobby:option_panel/pages/shop/ffa_economy/first_income_delay/refresh
