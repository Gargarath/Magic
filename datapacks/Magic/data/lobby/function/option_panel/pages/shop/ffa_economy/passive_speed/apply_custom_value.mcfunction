scoreboard players operation $passive_income_speed option_panel = @s optn_passive_speed_custom
scoreboard players reset @s optn_passive_speed_custom
scoreboard players enable @s optn_passive_speed_custom
scoreboard players set @s optn_passive_speed_custom -1
execute if score $passive_income_speed option_panel matches ..-1 run scoreboard players set $passive_income_speed option_panel 0
execute if score $passive_income_speed option_panel matches 31.. run scoreboard players set $passive_income_speed option_panel 30
execute store result storage temp temp int 1 run scoreboard players get $passive_income_speed option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ffa_economy/passive_speed/display with storage lobby:language translate
execute if entity @n[type=item_display,tag=optn_menu_ffa_passive_speed] run function lobby:option_panel/pages/shop/ffa_economy/first_income_delay/refresh
