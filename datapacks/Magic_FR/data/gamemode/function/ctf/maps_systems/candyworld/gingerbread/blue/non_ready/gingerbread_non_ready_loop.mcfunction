## appelée par loop_candyworld si le pain d'épice bleu n'est pas dispo

execute if score cooldown_blue gingerbread matches -1 as @a[tag=gingerbread_passenger_blue,limit=1] run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/feet_kick/kick_travel_timer
execute if score cooldown_blue gingerbread matches 0.. run function gamemode:ctf/maps_systems/candyworld/gingerbread/blue/non_ready/cooldown