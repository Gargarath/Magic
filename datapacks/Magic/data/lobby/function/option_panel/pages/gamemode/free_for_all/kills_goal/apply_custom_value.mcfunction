## appelee par lobby:loop si @s utilise le dialog
# applique une valeur libre et rafraichit l'affichage

scoreboard players operation $kills_goal option_panel = @s optn_kills_goal_custom
scoreboard players reset @s optn_kills_goal_custom
scoreboard players enable @s optn_kills_goal_custom
scoreboard players set @s optn_kills_goal_custom -1

execute if score $kills_goal option_panel matches ..0 run scoreboard players set $kills_goal option_panel 1
execute if score $kills_goal option_panel matches 51.. run scoreboard players set $kills_goal option_panel 50

execute store result storage temp temp int 1 run scoreboard players get $kills_goal option_panel
data modify storage lobby:language translate merge from storage temp
function lobby:option_panel/pages/gamemode/free_for_all/kills_goal/display with storage lobby:language translate
