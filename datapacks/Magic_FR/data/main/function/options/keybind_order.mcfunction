## appelée par main:loop
# permet d'alterner entre raccourcis depuis gauche et droite

scoreboard players reset @s opt_trig_keybind_order
scoreboard players enable @s opt_trig_keybind_order

scoreboard players add @s opt_keybind_order 1
execute if score @s opt_keybind_order matches 3 run scoreboard players set @s opt_keybind_order 1

execute unless score @s InLobby matches 1 run function main:items_positions/determine_spell_order
# si pas dans le lobby -> actualise les sorts dans l'UI 

function main:options/open_options