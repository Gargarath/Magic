scoreboard players operation $passive_money option_panel = @s optn_passive_money_custom
scoreboard players reset @s optn_passive_money_custom
scoreboard players enable @s optn_passive_money_custom
scoreboard players set @s optn_passive_money_custom -1
execute if score $passive_money option_panel matches ..0 run scoreboard players set $passive_money option_panel 1
execute if score $passive_money option_panel matches 51.. run scoreboard players set $passive_money option_panel 50
execute store result storage temp temp int 1 run scoreboard players get $passive_money option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ffa_economy/passive_money/display with storage lobby:language translate
