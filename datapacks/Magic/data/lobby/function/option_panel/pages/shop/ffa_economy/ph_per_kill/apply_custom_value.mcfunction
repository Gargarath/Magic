scoreboard players operation $ph_per_kills option_panel = @s optn_ph_per_kill_custom
scoreboard players reset @s optn_ph_per_kill_custom
scoreboard players enable @s optn_ph_per_kill_custom
scoreboard players set @s optn_ph_per_kill_custom -1
execute if score $ph_per_kills option_panel matches ..-1 run scoreboard players set $ph_per_kills option_panel 0
execute if score $ph_per_kills option_panel matches 51.. run scoreboard players set $ph_per_kills option_panel 50
execute store result storage temp temp int 1 run scoreboard players get $ph_per_kills option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ffa_economy/ph_per_kill/display with storage lobby:language translate
