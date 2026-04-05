## permet de reset le spawn de @s en fonction de la map

execute if score selected_map variables matches 1 run function gamemode:ctf/used_bed/pirate
execute if score selected_map variables matches 4 run function gamemode:ctf/used_bed/volcano
execute if score selected_map variables matches 5 run function gamemode:ctf/used_bed/ruin
advancement revoke @s only main:used_bed