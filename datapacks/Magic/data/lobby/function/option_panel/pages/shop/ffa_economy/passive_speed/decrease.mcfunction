scoreboard players operation $old option_panel = $passive_income_speed option_panel
execute if score $old option_panel matches ..0 run scoreboard players set $passive_income_speed option_panel 30
execute if score $old option_panel matches 1..3 run scoreboard players set $passive_income_speed option_panel 0
execute if score $old option_panel matches 4..5 run scoreboard players set $passive_income_speed option_panel 3
execute if score $old option_panel matches 6..7 run scoreboard players set $passive_income_speed option_panel 5
execute if score $old option_panel matches 8..10 run scoreboard players set $passive_income_speed option_panel 7
execute if score $old option_panel matches 11..15 run scoreboard players set $passive_income_speed option_panel 10
execute if score $old option_panel matches 16..20 run scoreboard players set $passive_income_speed option_panel 15
execute if score $old option_panel matches 21..25 run scoreboard players set $passive_income_speed option_panel 20
execute if score $old option_panel matches 26..30 run scoreboard players set $passive_income_speed option_panel 25
execute if score $old option_panel matches 31.. run scoreboard players set $passive_income_speed option_panel 30
execute store result storage temp temp int 1 run scoreboard players get $passive_income_speed option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ffa_economy/passive_speed/display with storage lobby:language translate
execute if entity @n[type=item_display,tag=optn_menu_ffa_passive_speed] run function lobby:option_panel/pages/shop/ffa_economy/first_income_delay/refresh
