scoreboard players operation $old option_panel = $first_income_delay option_panel
execute if score $old option_panel matches ..1 run scoreboard players set $first_income_delay option_panel 60
execute if score $old option_panel matches 2..5 run scoreboard players set $first_income_delay option_panel 1
execute if score $old option_panel matches 6..10 run scoreboard players set $first_income_delay option_panel 5
execute if score $old option_panel matches 11..15 run scoreboard players set $first_income_delay option_panel 10
execute if score $old option_panel matches 16..20 run scoreboard players set $first_income_delay option_panel 15
execute if score $old option_panel matches 21..30 run scoreboard players set $first_income_delay option_panel 20
execute if score $old option_panel matches 31..45 run scoreboard players set $first_income_delay option_panel 30
execute if score $old option_panel matches 46..60 run scoreboard players set $first_income_delay option_panel 45
execute if score $old option_panel matches 61.. run scoreboard players set $first_income_delay option_panel 60
execute store result storage temp temp int 1 run scoreboard players get $first_income_delay option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ffa_economy/first_income_delay/display with storage lobby:language translate
