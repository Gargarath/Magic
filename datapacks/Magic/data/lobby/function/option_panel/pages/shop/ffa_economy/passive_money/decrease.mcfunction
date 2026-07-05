scoreboard players operation $old option_panel = $passive_money option_panel
execute if score $old option_panel matches ..1 run scoreboard players set $passive_money option_panel 50
execute if score $old option_panel matches 2..5 run scoreboard players set $passive_money option_panel 1
execute if score $old option_panel matches 6..10 run scoreboard players set $passive_money option_panel 5
execute if score $old option_panel matches 11..15 run scoreboard players set $passive_money option_panel 10
execute if score $old option_panel matches 16..20 run scoreboard players set $passive_money option_panel 15
execute if score $old option_panel matches 21..25 run scoreboard players set $passive_money option_panel 20
execute if score $old option_panel matches 26..30 run scoreboard players set $passive_money option_panel 25
execute if score $old option_panel matches 31..35 run scoreboard players set $passive_money option_panel 30
execute if score $old option_panel matches 36..40 run scoreboard players set $passive_money option_panel 35
execute if score $old option_panel matches 41..45 run scoreboard players set $passive_money option_panel 40
execute if score $old option_panel matches 46..50 run scoreboard players set $passive_money option_panel 45
execute if score $old option_panel matches 51.. run scoreboard players set $passive_money option_panel 50
execute store result storage temp temp int 1 run scoreboard players get $passive_money option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ffa_economy/passive_money/display with storage lobby:language translate
