## appelee par lobby:loop si @s utilise le dialog
# applique une valeur libre et rafraichit l'affichage

scoreboard players operation $shop_timer option_panel = @s optn_shop_timer_custom
scoreboard players reset @s optn_shop_timer_custom
scoreboard players enable @s optn_shop_timer_custom
scoreboard players set @s optn_shop_timer_custom -1

execute if score $shop_timer option_panel matches ..-1 run scoreboard players set $shop_timer option_panel 0
execute if score $shop_timer option_panel matches 101.. run scoreboard players set $shop_timer option_panel 100
execute if score $shop_timer option_panel matches 0 run scoreboard players set $shop_timer option_panel -1

execute store result storage temp temp int 1 run scoreboard players get $shop_timer option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/gamemode/capture_the_flag/shop_timer/display with storage lobby:language translate