scoreboard players operation $first_income_delay option_panel = @s optn_first_income_delay_custom
scoreboard players reset @s optn_first_income_delay_custom
scoreboard players enable @s optn_first_income_delay_custom
scoreboard players set @s optn_first_income_delay_custom -1
execute if score $first_income_delay option_panel matches ..0 run scoreboard players set $first_income_delay option_panel 1
execute if score $first_income_delay option_panel matches 61.. run scoreboard players set $first_income_delay option_panel 60
execute store result storage temp temp int 1 run scoreboard players get $first_income_delay option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ffa_economy/first_income_delay/display with storage lobby:language translate
