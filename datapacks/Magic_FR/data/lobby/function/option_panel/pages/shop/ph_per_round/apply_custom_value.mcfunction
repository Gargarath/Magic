## appelee par lobby:loop si @s utilise le dialog
# applique une valeur libre et rafraichit l'affichage

scoreboard players operation $ph_per_round option_panel = @s optn_ph_per_round_custom
scoreboard players reset @s optn_ph_per_round_custom
scoreboard players enable @s optn_ph_per_round_custom
scoreboard players set @s optn_ph_per_round_custom -1

execute if score $ph_per_round option_panel matches ..-1 run scoreboard players set $ph_per_round option_panel 0
execute if score $ph_per_round option_panel matches 601.. run scoreboard players set $ph_per_round option_panel 600

execute store result storage temp temp int 1 run scoreboard players get $ph_per_round option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/shop/ph_per_round/display with storage lobby:language translate
