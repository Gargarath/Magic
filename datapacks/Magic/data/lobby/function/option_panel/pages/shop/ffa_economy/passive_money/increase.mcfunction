scoreboard players operation $old option_panel = $passive_money option_panel
execute if score $old option_panel matches ..0 run scoreboard players set $passive_money option_panel 1
execute if score $old option_panel matches 1..4 run scoreboard players set $passive_money option_panel 5
execute if score $old option_panel matches 5..9 run scoreboard players set $passive_money option_panel 10
execute if score $old option_panel matches 10..14 run scoreboard players set $passive_money option_panel 15
execute if score $old option_panel matches 15..19 run scoreboard players set $passive_money option_panel 20
execute if score $old option_panel matches 20..24 run scoreboard players set $passive_money option_panel 25
execute if score $old option_panel matches 25..29 run scoreboard players set $passive_money option_panel 30
execute if score $old option_panel matches 30..34 run scoreboard players set $passive_money option_panel 35
execute if score $old option_panel matches 35..39 run scoreboard players set $passive_money option_panel 40
execute if score $old option_panel matches 40..44 run scoreboard players set $passive_money option_panel 45
execute if score $old option_panel matches 45..49 run scoreboard players set $passive_money option_panel 50
execute if score $old option_panel matches 50.. run scoreboard players set $passive_money option_panel 1
execute store result storage temp temp int 1 run scoreboard players get $passive_money option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ffa_economy/passive_money/display with storage lobby:language translate
