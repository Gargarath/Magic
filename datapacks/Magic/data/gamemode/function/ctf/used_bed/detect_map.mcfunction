## permet de reset le spawn de @s en fonction du mode et de la map

execute if score $gamemode option_panel matches 0 run function gamemode:ctf/used_bed/ffa_shop
execute if score $gamemode option_panel matches 1 if score selected_map variables matches 1 run function gamemode:ctf/used_bed/pirate
execute if score $gamemode option_panel matches 1 if score selected_map variables matches 4 run function gamemode:ctf/used_bed/volcano
execute if score $gamemode option_panel matches 1 if score selected_map variables matches 5 run function gamemode:ctf/used_bed/ruin
advancement revoke @s only main:used_bed

function main:gui/display/refresh_gui
