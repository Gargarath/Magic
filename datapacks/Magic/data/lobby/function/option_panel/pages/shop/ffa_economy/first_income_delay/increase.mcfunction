scoreboard players operation $old option_panel = $first_income_delay option_panel
execute if score $old option_panel matches ..0 run scoreboard players set $first_income_delay option_panel 1
execute if score $old option_panel matches 1..4 run scoreboard players set $first_income_delay option_panel 5
execute if score $old option_panel matches 5..9 run scoreboard players set $first_income_delay option_panel 10
execute if score $old option_panel matches 10..14 run scoreboard players set $first_income_delay option_panel 15
execute if score $old option_panel matches 15..19 run scoreboard players set $first_income_delay option_panel 20
execute if score $old option_panel matches 20..29 run scoreboard players set $first_income_delay option_panel 30
execute if score $old option_panel matches 30..44 run scoreboard players set $first_income_delay option_panel 45
execute if score $old option_panel matches 45..59 run scoreboard players set $first_income_delay option_panel 60
execute if score $old option_panel matches 60.. run scoreboard players set $first_income_delay option_panel 1
execute store result storage temp temp int 1 run scoreboard players get $first_income_delay option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ffa_economy/first_income_delay/display with storage lobby:language translate
